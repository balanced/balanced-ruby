require 'uri'
require 'balanced/version' unless defined? Balanced::VERSION

module Balanced
  autoload :Client, 'balanced/client'
  autoload :Utils, 'balanced/utils'
  autoload :Resource, 'balanced/resource'
  autoload :ApiKey, 'balanced/api_key'

  @client = nil
  @config = {
      :scheme => 'http',
      :host => 'localhost',
      :port => 5000,
      :version => '1',
  }

  class << self

    attr_accessor 'client'
    attr_accessor 'config'

    def configure(api_key=nil, options={})
      options = @config.merge! options
      @config = options
      @client = Balanced::Client.new(api_key, @config)
    end

    def get uri, params = {}
      self.client.get uri, params
    end

    def post uri, data = {}
      self.client.post uri, data
    end

    def put uri, data = {}
      self.client.put uri, data
    end

    def delete uri
      self.client.delete uri
    end

    def from_uri uri
      parsed_uri = URI.parse(uri)
      split_uri = parsed_uri.path.sub(/\/$/, '').split('/')
      class_name = Balanced::Utils.classify(split_uri[-1])
      klass = Balanced.const_get(class_name)

      if klass
        return klass
      end

      class_name = Utils.classify(split_uri[-2])
      Balanced.const_get(class_name)
    end
  end

end