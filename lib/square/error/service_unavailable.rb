require 'square/error/server_error'

module Square
  class Error
    # Raised when Square returns the HTTP status code 503
    class ServiceUnavailable < Square::Error::ServerError
      HTTP_STATUS_CODE = 503
      MESSAGE = 'Square is over capacity.'
    end
  end
end
