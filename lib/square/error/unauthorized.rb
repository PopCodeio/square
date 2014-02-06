require 'square/error/client_error'

module Square
  class Error
    # Raised when Square returns the HTTP status code 401
    class Unauthorized < Square::Error::ClientError
      HTTP_STATUS_CODE = 401
    end
  end
end
