require 'square/error/client_error'

module Square
  class Error
    # Raised when Square returns the HTTP status code 400
    class BadRequest < Square::Error::ClientError
      HTTP_STATUS_CODE = 400
    end
  end
end
