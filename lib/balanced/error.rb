module Balanced

  # Custom error class for rescuing from all API response-related Balanced errors
  class Error < ::StandardError
    attr_reader :response

    # @param [Hash] response the decoded json response body
    def initialize(response=nil)
      @response = response
      unless response.nil?
        super error_message
      end
    end

    # @return [Hash]
    def body
      @body ||= begin
        return {} unless response[:body]
        Utils.indifferent_read_access(response[:body])
      end
    end

    def error_message
      set_attrs
      errors = body.fetch('errors', nil)
      unless errors.nil?
        error = body[:errors][0]
        extra = error[:additional] ? " -- #{error[:additional]}" : ""
        "#{self.class.name}(#{response[:status]})::#{error[:status]}:: "\
        "#{response[:method].to_s.upcase} #{response[:url].to_s}: "\
        "#{error[:category_code]}: #{error[:description]} #{extra}"
      end
    end

    private
    def set_attrs
      errors = body.fetch('errors', nil)
      unless errors.nil?
        error = errors[0]
        error.keys.each do |name|
          self.class.instance_eval {
            define_method(name) { error[name] }                       # Get.
            define_method("#{name}?") { !!error[name] }               # Present.
          }
        end
      end
    end
  end

  # General error class for non API response exceptions
  class StandardError < Error
    attr_reader :message
    alias :error_message :message

    # @param [String, nil] message a description of the exception
    def initialize(message = nil)
      @message = message
      super(message)
    end
  end

  # Raised when attempted to create a debit or hold for a card not associated
  # to a customer.
  class UnassociatedCardError < StandardError
    # @param [Balanced::Card] card
    def initialize(card)
      @card = card
      super(error_message)
    end

    def error_message
      "The Balanced::Card with uri=#{@card.attributes['uri']} is not associated to a customer"
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


  # custom mapped exceptions
  class FundingInstrumentVerificationError < Error; end

  # Raised when Balanced has an issue with you verifying a bank account
  class BankAccountVerificationFailure < FundingInstrumentVerificationError; end
  
  class FundingInstrumentNotCreditable < Error; end

end
