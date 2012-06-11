require 'logger'
require "uri"
require "faraday"
require "faraday_middleware"

module Balanced
  class Client

    DEFAULTS = {
      :scheme => 'http',
      :host => 'localhost',
      :port => 5000,
      :version => '1',
      :logging_level => 'WARN',
    }

    attr_reader :conn
    attr_accessor :api_key, :config

    def initialize(api_key, options={})
      @api_key = api_key.nil? ? api_key : api_key.strip
      @config = DEFAULTS.merge options
      build_conn
    end

    def build_conn
      logger = Logger.new(STDOUT)
      logger.level = Logger.const_get(DEFAULTS[:logging_level].to_s)

      @conn = Faraday.new url do |cxn|
        cxn.request  :json

        cxn.response :logger, logger
        cxn.response :json
        cxn.response :raise_error  # raise exceptions on 40x, 50x responses
        cxn.adapter  Faraday.default_adapter
      end
      conn.path_prefix = '/'
      conn.headers['User-Agent'] = "balanced-ruby/#{Balanced::VERSION}"
    end

    #def inspect  # :nodoc:
      #"<Balanced::Client @api_key=#{api_key}, @url=#{url}>"
    #end

    def url
      _url = URI::HTTPS.build(
        :host => config[:host],
        :port => config[:port]
      )
      _url
    end

    private

    def method_missing(method, *args, &block)
      case method
      when :get, :post, :put, :delete
        conn.basic_auth(api_key, '') unless api_key.nil?
        conn.send method, *args
      else
        super
      end
    end

  end
end
