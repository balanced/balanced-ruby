require File.expand_path('../../pager', __FILE__)
require File.expand_path('../../utils', __FILE__)
require 'addressable/template'

module Balanced

  module Resource
    attr_accessor :attributes
    attr_accessor :hyperlinks
    attr_accessor :id
    attr_accessor :href
    attr_accessor :links

    def initialize(attributes = {})
      @attributes = Utils.indifferent_read_access attributes
      @hyperlinks = {}
    end

    def id
      (attributes[:id] ||= nil)
    end

    def id=(value)
      attributes[:id] = value
    end

    def href
      (attributes[:href] ||= self.class.collection_name)
    end

    def links
      (attributes[:links] ||= {})
    end

    def links=(value)
      attributes[:links] = value
    end

    def hydrate(links, meta)
      # links here is 'marketplaces.events'
      links.each do |key, uri|
        # key is 'marketplaces.events'
        property = key.sub(/.*?\./, '')
        # property here is events
        # if marketplace.links is a hash
        # for each property and uri, we want to set them on the instance
        # as pagers.
        #
        # right?
        if self.links.include? property
          link_value = self.links[property]
          # expands /customers/{marketplaces.owner_customer} to /customers/ACxxxxx
          template = Addressable::Template.new(uri)
          uri = template.expand("#{key}" => link_value).to_s
          @hyperlinks[property] = Balanced::Utils.callable(
              link_value.nil? ? link_value : lambda { self.class.find(uri) }
          )
        else
          unless uri.nil? || uri.is_a?(Hash)
            # matches something like '/blah/{class.attribute}/bliakdf'
            begin
              match_data = /\{(#{self.class.collection_name}\.(\w+))\}/.match(uri)
            rescue TypeError => ex
              puts 'what the fuck'
              raise ex
            end
            unless match_data.nil?
              attribute_path = match_data[1]
              attribute_name = match_data[2]
              template = Addressable::Template.new(uri)
              uri = template.expand("#{attribute_path}" => @attributes[attribute_name]).to_s
            end
          end
          @hyperlinks[property] = Balanced::Utils.callable(Balanced::Pager.new(uri, {}))
        end
      end
    end

    # delegate the query to the pager module

    def fetch(*arguments)
      self.class.find *arguments
    end
    
    alias find fetch

    def save
      href = @attributes.delete('href')
      method = :post
      if href.nil?
        href = self.class.collection_path
      elsif !Balanced.is_collection(href)
        method = :put
      end

      attributes_to_submit = self.sanitize
      begin
        @response = Balanced.send(method, href, attributes_to_submit)
      rescue Balanced::Error
        # restore the href on the instance if there was an exception
        # this will allow us to try to fix any attributes and save again
        @attributes['href'] = href
        raise
      end

      reload @response
    end

    def sanitize
      to_submit = {}
      @attributes.each do |key, value|
        if value.is_a? Balanced::Resource
          to_submit[key] = value.href if value.href
        else
          to_submit[key] = value
        end
      end
      to_submit
    end

    def response
      @response
    end

    private :response

    def unstore
      Balanced.unstore @attributes[:href]
    end
    alias_method :destroy, :unstore

    def reload(the_response = nil)
      if the_response
        return if the_response.body.to_s.length.zero?
        fresh = self.class.construct_from_response the_response.body
      else
        fresh = self.find(@attributes[:href])
      end
      fresh and copy_from fresh
      self
    end

    def copy_from(other)
      other.instance_variables.each do |ivar|
        instance_variable_set ivar, other.instance_variable_get(ivar)
      end
    end

    def method_missing(method, *args, &block)
      if @attributes.has_key?(method.to_s)
        return @attributes[method.to_s]
      end

      case method.to_s
        when /(.+)=$/
          attr = method.to_s.chop
          @attributes[attr] = args[0]
        else
          # This piece of code is a bit disgusting. We will clean it up soon,
          # but basically, we were creating closures using this code snippet
          # but those closures were transferred to the actual classes themselves
          # so you would have something like BankAccount.new.account and this
          # will give the last closure added for a BankAccount even if it has
          # nothing to do with the actual class itself.
          #
          # This caused some weird errors, so the best thing to do was to just
          # move this piece of code and "dynamically" enable it for all
          # method requests that are essentially #{method}_uri.
          #
          # This solves the acute problem, for now.
          if @hyperlinks.has_key? "#{method}"
            value = @hyperlinks["#{method}"]
            result = value.call
            return result
          else
            super
          end
      end
    end

    if RUBY_VERSION < '1.9'
      def respond_to?(method_name, include_private=false)
        does_resource_respond_to?(method_name) || super
      end
    else
      def respond_to_missing?(method_name, include_private=false)
        does_resource_respond_to?(method_name) || super
      end
    end

    def does_resource_respond_to?(method_name)
      @attributes.has_key?(method_name.to_s) or @hyperlinks.has_key?(method_name.to_s)
    end

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods

      def resource_name
        Utils.demodulize name
      end

      def collection_name
        Utils.pluralize Utils.underscore(resource_name)
      end

      def collection_path
        # this is to just support version1  stuff, but in reality, if we get here
        # we should throw an exception since we do not want to use v1 ever.
        if Balanced.config[:version] == '1'
          # XXX: we should raise an exception if we get here.
          ["/v#{Balanced.config[:version]}", collection_name].compact.join '/'
        else
          collection_name
        end
      end

      def href
        collection_path
      end

      def member_name
        Utils.underscore resource_name
      end

      def construct_from_response(payload)
        payload = Balanced::Utils.indifferent_read_access payload

        links = payload.delete('links') || {}
        meta = payload.delete('meta') || {}

        if payload.length > 1
          raise 'NOT SUPPORTED YET'
        end

        instance = nil
        # the remaining keys here are just hypermedia resources
        payload.each do |key, value|
          # > If the length of an array at a resource key is greater than one,
          #   the value represents a list of documents.
          if value.length > 1
            # key is a collection, this should never happen
            raise 'This should basically never happen'
          end
          # > Singular resources are represented as JSON objects. However,
          #   they are still wrapped inside an array:
          resource_body = value.first
          cls = Balanced.from_hypermedia_registry(key)
          instance = cls.new resource_body
          instance.hydrate(links, meta)
        end
        instance
      end

      def fetch(*arguments)
        if arguments.nil? ||
           arguments.empty?  ||
           arguments[0].nil? ||
           arguments[0].to_s.empty? # no symbol.empty? in 1.8.7
          raise Balanced::NotFound
        end
        scope = arguments.slice!(0)
        options = arguments.slice!(0) || {}
        case scope
          when :all then
            all(options)
          when :first then
            paginate(options).first
          else
            response = Balanced.get scope, options
            construct_from_response response.body
        end
      end

      alias find fetch
      
      def paginate(options = {})
        Balanced::Pager.new href, options
      end

      alias scoped paginate
      alias where paginate

      def all(options = {})
        pager = paginate(options)
        pager.to_a
      end

    end

  end
end
