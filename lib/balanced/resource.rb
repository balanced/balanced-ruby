module Balanced
  class Resource

    class << self

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

    end

    attr_reader :attributes

    def initialize attributes = {}
      @attributes = attributes
      self.attributes = attributes
    end

    def attributes= attributes = {}
      attributes.each_pair { |k, v|
        respond_to?(name = "#{k}=") and send(name, v) or (self[k] = v)
      }
    end

    def read_attribute key
      attributes[key.to_s]
    end
    alias [] read_attribute

    def write_attribute key, value
      attributes[key] = value
    end
    alias []= write_attribute

    # delegate the query to the pager module

    def find (uri, options={})
      payload = Balanced.get :uri => uri
      construct_from_response payload
    end

    def save
      uri = self.attributes.delete('uri') { |key| nil }
      method = :post
      if uri.nil?
        uri = self.class.collection_path
      else
        method = :put
      end
      response = Balanced.send(method, uri, self.attributes)
      reload response
    end

    def destroy
      Balanced.delete :uri => self.attributes['uri']
    end

    def construct_from_response payload
      klass = Balanced.from_uri(payload['uri'])
      record = {}
      payload.each do |name, value|
        record.instance_variable_set "@#{name}", value.to_s
      end
      klass.new record
    end

    def reload response = nil
      if response
        return if response.body.to_s.length.zero?
        fresh = self.construct_from_response response
      else
        fresh = self.find(@attributes['uri'])
      end
      fresh and copy_from fresh
      self
    end

    def copy_from other
      other.instance_variables.each do |ivar|
        instance_variable_set ivar, other.instance_variable_get(ivar)
      end
    end

  end
end