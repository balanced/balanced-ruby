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
    def on_complete(response)
      status_code = response[:status].to_i
      error_class = HTTP_STATUS_CODES[status_code]
      raise error_class.new(response) if error_class
    end

  end

end
