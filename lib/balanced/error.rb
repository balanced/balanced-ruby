module Balanced

  # Custom error class for rescuing from all Balanced errors
  class Error < StandardError
    attr_reader :response

    def initialize(response)
      @response = response
      super error_message
    end

    def body
      Utils.hash_with_indifferent_read_access response[:body]
    end

    def error_message
      set_attrs
      extra = body[:additional] ? " -- #{body[:additional]}" : ""
      "#{self.class.name}(#{response[:status]})::#{body[:status]}:: "\
      "#{response[:method].to_s.upcase} #{response[:url].to_s}: "\
      "#{body[:category_code]}: #{body[:description]} #{extra}"
    end

    private
    def set_attrs
      body.keys.each do |name|
        self.class.instance_eval {
          define_method(name) { body[name] }                       # Get.
          define_method("#{name}?") { !!body[name].nil? }          # Present.
        }
      end
    end
  end

  class MoreInformationRequired < Error
    def redirect_uri
      response.headers['Location']
    end

    def error_message
      set_attrs
      "#{self.class.name} :: #{response[:method].to_s.upcase} #{response[:url].to_s}: "\
      "#{response[:status]}: \n#{body[:friendly_html]}"
    end
  end

  # Raised when Balanced returns a 400 HTTP status code
  class BadRequest < Error; end

  # Raised when Balanced returns a 401 HTTP status code
  class Unauthorized < Error; end

  # Raised when Balanced returns a 402 HTTP status code
  class PaymentRequired < Error; end

  # Raised when Balanced returns a 403 HTTP status code
  class Forbidden < Error; end

  # Raised when Balanced returns a 404 HTTP status code
  class NotFound < Error; end

  # Raised when Balanced returns a 405 HTTP status code
  class MethodNotAllowed < Error; end

  # Raised when Balanced returns a 409 HTTP status code
  class Conflict < Error; end

  # Raised when Balanced returns a 410 HTTP status code
  class Gone < Error; end

  # Raised when Balanced returns a 500 HTTP status code
  class InternalServerError < Error; end

  # Raised when Balanced returns a 501 HTTP status code
  class NotImplemented < Error; end

  # Raised when Balanced returns a 502 HTTP status code
  class BadGateway < Error; end

  # Raised when Balanced returns a 503 HTTP status code
  class ServiceUnavailable < Error; end

  # Raised when Balanced returns a 504 HTTP status code
  class GatewayTimeout < Error; end
end
