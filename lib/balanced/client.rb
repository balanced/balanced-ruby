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
      :connection_timeout => 60,
      :read_timeout => 60,
      :logger => nil,
      :ssl_verify => true,
      :faraday_adapter => Faraday.default_adapter
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
        },
        :ssl => {
          :verify => @config[:ssl_verify] # Only set this to false for testing
        }
      }
      @conn = Faraday.new(url, options) do |cxn|
        cxn.request  :json

        cxn.response :logger, logger
        cxn.response :handle_balanced_errors
        cxn.response :json
        # cxn.response :raise_error  # raise exceptions on 40x, 50x responses
        cxn.adapter  config[:faraday_adapter]
      end
      conn.path_prefix = '/'
      conn.headers['User-Agent'] = "balanced-ruby/#{Balanced::VERSION}"
    end

    #def inspect  # :nodoc:
      #"<Balanced::Client @api_key=#{api_key}, @url=#{url}>"
    #end

    def url
      builder = (config[:scheme] == 'http') ? URI::HTTP : URI::HTTPS

      builder.build ({:host => config[:host],
                         :port => config[:port],
                         :scheme => config[:scheme]})
    end

    def method_missing(method, *args, &block)
      if is_http_method? method
        conn.basic_auth(api_key, '') unless api_key.nil?
        conn.send method, *args
      else
        super method, *args, &block
      end
    end

    private

    def is_http_method? method
      [:get, :post, :put, :delete].include? method
    end

    def respond_to?(method, include_private = false)
      if is_http_method? method
        true
      else
        super method, include_private
      end
    end
  end
end
