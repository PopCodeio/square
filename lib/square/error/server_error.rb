require 'square/error/base'

module Square
  module Error
    # Raised when Square returns a 5xx HTTP status code
    class ServerError < Square::Error::Base
      MESSAGE = 'Server Error'

      # Create a new error from an HTTP environment
      #
      # @param response [Hash]
      # @return [Square::Error::Base]
      def self.from_response(response={})
        new(nil, response[:response_headers])
      end

      # Initializes a new ServerError object
      #
      # @param message [String]
      # @param response_headers [Hash]
      # @return [Square::Error::ServerError]
      def initialize(message=nil, response_headers={})
        super((message || self.class.const_get(:MESSAGE)), response_headers)
      end

    end
  end
end
