require 'square/error/client_error'

module Square
  class Error
    # Raised when Square returns the HTTP status code 406
    class NotAcceptable < Square::Error::ClientError
      HTTP_STATUS_CODE = 406
    end
  end
end
