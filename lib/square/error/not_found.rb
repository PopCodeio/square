require 'square/error/client_error'

module Square
  class Error
    # Raised when Square returns the HTTP status code 404
    class NotFound < Square::Error::ClientError
      HTTP_STATUS_CODE = 404
    end
  end
end
