require 'square/utils'
require 'square/connect/refund'

module Square
  module Connect
    module API
      module Refunds
        include Square::Utils::API

        # Returns the list of refunds if authentication was successful, otherwise raises {Square::Error::Unauthorized}
        #
        # @see https://connect.squareup.com/docs/connect/endpoints/get-refunds
        # @note Authentication Required
        # @raise [Square::Error::Unauthorized] Error raised when supplied user credentials are invalid.
        # @return [Square::Connect::Refund]
        # @param options
        # @param merchant_id [String]
        def refunds(options = {}, merchant_id = 'me')
          objects_from_response(Square::Connect::Refund, :get, "/#{merchant_id}/refunds", options)
        end

      end
    end
  end
end
