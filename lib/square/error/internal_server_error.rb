require 'square/error/server_error'

module Square
  module Error
    # Raised when Square returns the HTTP status code 500
    class InternalServerError < Square::Error::ServerError
      HTTP_STATUS_CODE = 500
      MESSAGE = 'Something is technically wrong.'
    end
  end
end
