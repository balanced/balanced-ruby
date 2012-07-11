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
      @response = Balanced.send(method, uri, self.attributes)
      reload @response
    end

    def response
      @response
    end
    private :response

    def destroy
      Balanced.delete @attributes[:uri]
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
          super
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

    def uri
      # the uri of a particular resource depends if there's a marketplace created or not
      # if there's a marketplace, then all resources have their own uri from there and the top level ones
      # if there's not a marketplace
      #    if there's an api key, then the merchant is available
      #    if there's no api key, the only resources exposed are purely top level
      if self == Balanced::Merchant or self == Balanced::Marketplace or self == Balanced::ApiKey
        collection_path
      else
        if Balanced::Marketplace.my_marketplace.nil?
          raise Balanced::Error, "#{self.name} is nested under a marketplace, which is not created or configured."
        else
          Balanced::Marketplace.my_marketplace.send(collection_name + '_uri')
        end
      end
    end

    def construct_from_response payload
      payload = Balanced::Utils.hash_with_indifferent_read_access payload
      return payload if payload[:uri].nil?
      klass = Balanced.from_uri(payload[:uri])
      instance = klass.new payload
      payload.each do |name, value|
        klass.class_eval {
          attr_accessor name.to_s
        }
        # here is where our interpretations will begin.
        # if the value is a sub-resource, lets instantiate the class
        # and set it correctly
        if value.instance_of? Hash and value.has_key? 'uri'
          value = construct_from_response value
        elsif name =~ /_uri$/
          modified_name = name.sub(/_uri$/, '')
          klass.instance_eval {
            define_method(modified_name) {
              values_class = Balanced.from_uri(value)
              # if uri is a collection -> this would definitely be if it ends in a symbol
              # then we should allow a lazy executor of the query pager
              if Balanced.is_collection(value)
                pager = Pager.new value, {}
                pager.to_a
              else
                values_class.find(value)
              end
            }
          }
        end

        instance.class.instance_eval {
          define_method(name) { @attributes[name] }                       # Get.
          define_method("#{name}=") { |value| @attributes[name] = value } # Set.
          define_method("#{name}?") { !!@attributes[name].nil? }               # Present.
        }
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
      Pager.new uri, options
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

