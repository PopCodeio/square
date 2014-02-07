require 'square/error/client_error'

module Square
  module Error
    # Raised when Square returns the HTTP status code 403
    class Forbidden < Square::Error::ClientError
      HTTP_STATUS_CODE = 403
    end
  end
end
