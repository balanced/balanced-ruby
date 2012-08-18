require "logger"
require "uri"
require "faraday"
require "faraday_middleware"
require "balanced_exception_middleware"


module Balanced
  class Client

    DEFAULTS = {
      :scheme => 'http',
      :host => 'localhost',
      :port => 5000,
      :version => '1',
      :logging_level => 'WARN',
      :connection_timeout => 2,
      :read_timeout => 5,
      :logger => nil
    }

    attr_reader :conn
    attr_accessor :api_key, :config

    def initialize(api_key, options={})
      @api_key = api_key.nil? ? api_key : api_key.strip
      @config = DEFAULTS.merge options
      build_conn
    end

    def build_conn
      if config[:logger]
        logger = config[:logger]
      else
        logger = Logger.new(STDOUT)
        logger.level = Logger.const_get(config[:logging_level].to_s)
      end

      Faraday.register_middleware :response,
          :handle_balanced_errors => lambda {Faraday::Response::RaiseBalancedError}

      options = {
        :request => {
          :open_timeout => config[:connection_timeout],
          :timeout => config[:read_timeout]
        }
      }
      @conn = Faraday.new(url, options) do |cxn|
        cxn.request  :json

        cxn.response :logger, logger
        cxn.response :handle_balanced_errors
        cxn.response :json
        # cxn.response :raise_error  # raise exceptions on 40x, 50x responses
        cxn.adapter  Faraday.default_adapter
      end
      conn.path_prefix = '/'
      conn.headers['User-Agent'] = "balanced-ruby/#{Balanced::VERSION}"
    end

    #def inspect  # :nodoc:
      #"<Balanced::Client @api_key=#{api_key}, @url=#{url}>"
    #end

    def url
      URI::HTTPS.build :host => config[:host], :port => config[:port]
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
