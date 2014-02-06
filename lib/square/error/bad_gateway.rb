require 'square/error/server_error'

module Square
  class Error
    # Raised when Square returns the HTTP status code 502
    class BadGateway < Square::Error::ServerError
      HTTP_STATUS_CODE = 502
      MESSAGE = 'Square is down or being upgraded.'
    end
  end
end
