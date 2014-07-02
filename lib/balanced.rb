
require 'uri'
require 'balanced/version' unless defined? Balanced::VERSION
require 'balanced/client'
require 'balanced/utils'
require 'balanced/error'

module Balanced

  @client = nil
  @config = {
      :scheme => 'https',
      :host => 'api.balancedpayments.com',
      :port => 443,
      :version => '1.1',
  }

  @hypermedia_registry = {}

  class << self

    attr_accessor :client
    attr_accessor :config
    attr_accessor :hypermedia_registry

    def configure(api_key=nil, options={})
      @config = @config.merge(options)
      @client = Balanced::Client.new(api_key, @config)
    end

    def is_configured_with_api_key?
      !@client.api_key.nil?
    end

    def split_the_href(href)
      URI.parse(href).path.sub(/\/$/, '').split('/')
    end

    def from_hypermedia_registry(resource_name)
      cls = Balanced.hypermedia_registry[resource_name]
      if cls.nil?
        raise 'OH SHIT'
      end
      cls
    end

    def from_href(href)
      split_uri = split_the_href(href)
      split_uri.reverse!.each do |resource|
        cls = Balanced.hypermedia_registry[resource]
        return cls unless cls.nil?
      end
    end

    def is_collection(href)
      split_uri = split_the_href(href)
      Balanced.hypermedia_registry.has_key?(split_uri.last)
    end

    def get(*args, &block)
      self.client.get *args
    end

    def post(*args, &block)
      self.client.post *args
    end

    def put(*args, &block)
      self.client.put *args
    end

    def unstore(*args, &block)
      self.client.unstore *args
    end
    alias_method :delete, :unstore
  end

  # configure on import so we don't have to configure for creating
  # an api key
  configure
end

# require all the balanced resources! this is needed at the end because
# the Balanced module needs to be defined first, as it contains the registry
require 'balanced/resources'
