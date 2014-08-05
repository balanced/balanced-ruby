require 'faraday'
require 'balanced/error'

# @api private
module Faraday

  class Response::RaiseBalancedError < Response::Middleware

    HTTP_STATUS_CODES = {
        300 => Balanced::MoreInformationRequired,
        400 => Balanced::BadRequest,
        401 => Balanced::Unauthorized,
        402 => Balanced::PaymentRequired,
        403 => Balanced::Forbidden,
        404 => Balanced::NotFound,
        405 => Balanced::MethodNotAllowed,
        409 => Balanced::Conflict,
        410 => Balanced::Gone,
        500 => Balanced::InternalServerError,
        501 => Balanced::NotImplemented,
        502 => Balanced::BadGateway,
        503 => Balanced::ServiceUnavailable,
        504 => Balanced::GatewayTimeout,
    }
    CATEGORY_CODE_MAP = {
        'bank-account-authentication-not-pending' =>
        Balanced::BankAccountVerificationFailure,
        'bank-account-authentication-failed' =>
        Balanced::BankAccountVerificationFailure,
        'bank-account-authentication-already-exists' =>
        Balanced::BankAccountVerificationFailure,
    }
    def on_complete(response)
      status_code = response[:status].to_i
      if response[:body] != nil && response[:body]['errors']
        category_code = response[:body]['errors'][0]['category_code']
      else
        category_code = nil
      end
      error_class = CATEGORY_CODE_MAP[category_code] || HTTP_STATUS_CODES[status_code]
      raise error_class.new(response) if error_class
    end

  end

end
