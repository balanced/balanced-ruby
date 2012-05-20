require "uri"
require "faraday"
require "faraday_middleware"

module Balanced
  class Client

    HTTP_HEADERS = {
       'Accept' => 'application/json',
       'Accept-Charset' => 'utf-8',
       'User-Agent' => "balanced-ruby/#{Balanced::VERSION}",
    }

    DEFAULTS = {
      :scheme => 'http',
      :host => 'localhost',
      :port => 5000,
      :version => '1',
    }

    attr :api_key, true
    attr_reader :conn
    attr_accessor :config

    def initialize(api_key, options={})
      @api_key = api_key.nil? ? api_key : api_key.strip
      @config = DEFAULTS.merge! options
      build_conn
    end


    def build_conn
      @conn = Faraday.new url do |cxn|
        cxn.request  :json

        cxn.response :logger
        cxn.response :json
        cxn.adapter  Faraday.default_adapter
      end
      @conn.path_prefix = '/'
    end

    def inspect  # :nodoc:
      "<Balanced::Client @api_key=#{@api_key}, @url=#{url}>"
    end

    def url
      _url = URI::HTTP.build(
          :host => @config[:host],
          :port => @config[:port],
      )
      # wow. yes, this is what you actually have to do.
      _url.scheme = @config[:scheme]
      _url
    end

    # wtf..
    def get *args
      op(:get, *args)
    end

    def post *args
      op(:post, *args)
    end

    def put *args
      op(:put, *args)
    end

    def delete *args
      op(:delete, *args)
    end

    private

    def op (method, *args)
      unless @api_key.nil?
        @conn.basic_auth(@api_key, '')
      end
      @conn.send(method, *args)
    end

  end

end