require_relative "../pager"


module Balanced
  module Resource
    attr_accessor :attributes

    def initialize attributes = {}
      @attributes = attributes
    end

    # delegate the query to the pager module

    def find *arguments
      self.class.find *arguments
    end

    def save
      uri = @attributes.delete('uri')
      method = :post
      if uri.nil?
        uri = self.class.collection_path
      elsif !Balanced.is_collection(uri)
        method = :put
      end
      attributes_to_submit = self.sanitize
      @response = Balanced.send(method, uri, attributes_to_submit)
      reload @response
    end

    def sanitize
      to_submit = {}
      @attributes.each do |key, value|
        if not value.is_a? Balanced::Resource
          to_submit[key] = value
        end
      end
      to_submit
    end

    def warn_on_positional args
      msg = <<-WARNING
      Called from: #{caller[1]}
      #############################################################
      #   WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!   #
      #############################################################

      Using positional arguments is **DEPRECATED**. Please use the
      keyword options pattern instead. Version __0.7.0__ of the
      Ruby client will not support positional arguments.

      If you need help, please hop on irc.freenode.net #balanced
      or contact support@balancedpayments.com
      WARNING
      # warn if [...] otherwise, it's ok if it's: [], [{}] or [{...}]
      unless (args.size == 1 and args.last.is_a? Hash) or (args.size == 0)
        warn msg
      end
    end

    def response
      @response
    end
    private :response

    def destroy
      Balanced.delete @attributes[:uri]
    end

    def unstore
      destroy
    end

    def reload the_response = nil
      if the_response
        return if the_response.body.to_s.length.zero?
        fresh = self.class.construct_from_response the_response.body
      else
        fresh = self.find(@attributes[:uri])
      end
      fresh and copy_from fresh
      self
    end

    def copy_from other
      other.instance_variables.each do |ivar|
        instance_variable_set ivar, other.instance_variable_get(ivar)
      end
    end

    def method_missing(method, *args, &block)
      case method
        when /(.+)\=$/
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
          if @attributes.has_key? "#{method}_uri"

            value = @attributes["#{method}_uri"]
            # what if the server returns a _uri that we don't know how to
            # construct? Welp, we catch that NameError and return to super.
            begin
              values_class = Balanced.from_uri(value)
            rescue NameError
              super
            end

            # if uri is a collection -> this would definitely be if
            # it ends in a symbol then we should allow a lazy executor of
            # the query pager
            if Balanced.is_collection(value)
              pager = Balanced::Pager.new value, {}
              return pager.to_a
            else
              return values_class.find(value)
            end

          else
            super
          end
      end
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
      ["/v#{Balanced.config[:version]}", collection_name].compact.join '/'
    end

    def member_name
      Utils.underscore resource_name
    end

    # Returns the resource URI for a given class.
    #
    # @example A Balanced::Account resource
    #   Balanced::Account.uri # => "/v1/marketplaces/TEST-MP72zVdg2j9IiqRffW9lczRZ/accounts"
    #
    # @return [String] the uri of the instance or the class
    def uri
      # the uri of a particular resource depends if there's a marketplace
      # created or not. if there's a marketplace, then all resources have their
      # own uri from there and the top level ones. if there's not a marketplace
      #
      #    if there's an api key, then the merchant is available
      #    if there's no api key, the only resources exposed are purely top level
      if self == Balanced::Merchant || self == Balanced::Marketplace || self == Balanced::ApiKey
        collection_path
      else
        unless Balanced::Marketplace.marketplace_exists?
          raise Balanced::StandardError, "#{self.name} is nested under a marketplace, which is not created or configured."
        end

        Balanced::Marketplace.marketplace_uri + "/#{collection_name}"
      end
    end

    def construct_from_response payload
      payload = Balanced::Utils.hash_with_indifferent_read_access payload
      return payload if payload[:uri].nil?
      klass = Balanced.from_uri(payload[:uri])
      instance = klass.new payload

      # http://stackoverflow.com/a/2495650/133514
      instance_eigen = class << instance; self; end

      payload.each do |name, value|

        # here is where our interpretations will begin.
        # if the value is a sub-resource, lets instantiate the class
        # and set it correctly
        if value.instance_of? Hash and value.has_key? 'uri'
          value = construct_from_response value
        end

         # Get attribute
        instance.class.send(:define_method, name, proc{@attributes[name]})
         # Set attribute
        instance.class.send(:define_method, "#{name}=",  proc{ |value| @attributes[name] = value })
         # Is attribute present?
        instance.class.send(:define_method, "#{name}?", proc{ !!@attributes[name] })

        instance.send("#{name}=".to_s, value)
      end
      instance
    end

    def find *arguments
      scope   = arguments.slice!(0)
      options = arguments.slice!(0) || {}
      case scope
        when :all   then all(options)
        when :first then paginate(options).first
        else
          response = Balanced.get scope, options
          construct_from_response response.body
      end
    end

    def paginate options = {}
      Balanced::Pager.new uri, options
    end
    alias scoped paginate
    alias where  paginate

    def all options = {}
      pager = paginate(options)
      pager.to_a
    end

  end

  end
end
