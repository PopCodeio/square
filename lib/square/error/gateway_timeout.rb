require 'square/error/server_error'

module Square
  class Error
    # Raised when Square returns the HTTP status code 504
    class GatewayTimeout < Square::Error::ServerError
      HTTP_STATUS_CODE = 504
      MESSAGE = "The Square servers are up, but the request couldn't be serviced due to some failure within our stack. Try again later."
    end
  end
end
