require 'square/utils'
require 'square/connect/merchant'

module Square
  module Connect
    module API
      module Merchants
        include Square::Utils::API

        # Returns a merchant if authentication was successful, otherwise raises {Square::Error::Unauthorized}
        #
        # @see https://connect.squareup.com/docs/connect/endpoints/get-merchantid
        # @note Authentication Required
        # @raise [Square::Error::Unauthorized] Error raised when supplied user credentials are invalid.
        # @return [Square::Connect::Merchant]
        # @param merchant_id [String]
        def merchant(merchant_id = 'me')
          object_from_response(Square::Connect::Merchant, :get, "/#{merchant_id}")
        end

      end
    end
  end
end
