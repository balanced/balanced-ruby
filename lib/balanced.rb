$:.unshift File.join(File.dirname(__FILE__), "balanced", "resources")
$:.unshift File.join(File.dirname(__FILE__), "balanced", "response")

require 'uri'
require 'balanced/version' unless defined? Balanced::VERSION
require 'balanced/client'
require 'balanced/utils'
require 'balanced/resources'
require 'balanced/error'

module Balanced

  @client = nil
  @config = {
      :scheme => 'https',

      :host => 'api.balancedpayments.com',
      :port => 443,
      :version => '1',
  }

  class << self

    attr_accessor :client
    attr_accessor :config

    def configure(api_key=nil, options={})
      @config = @config.merge(options)
      @client = Balanced::Client.new(api_key, @config)
    end

    def is_configured_with_api_key?
      !@client.api_key.nil?
    end

    def split_the_uri uri
      URI.parse(uri).path.sub(/\/$/, '').split('/')
    end

    def from_uri uri
      split_uri = split_the_uri(uri)
      # this is such an ugly hack, basically, we're trying to
      # see if we have the symbol that matches the capitalized
      #
      class_name = Balanced::Utils.classify(split_uri[-1])
      begin
        klass = Balanced.const_get class_name
      rescue NameError
        class_name = Utils.classify(split_uri[-2])
        klass = Balanced.const_get(class_name)
      end
      klass
    end

    def is_collection uri
      split_uri = split_the_uri(uri)
      class_name = Balanced::Utils.classify(split_uri[-1])
      begin
        Balanced.const_get class_name
      rescue NameError
        return false
      end
      true
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

    def delete(*args, &block)
      self.client.delete *args
    end
  end

  # configure on import so we don't have to configure for creating
  # an api key
  configure
end
