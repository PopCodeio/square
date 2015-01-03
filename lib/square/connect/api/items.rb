require 'square/utils/api'
#require 'square/connect/model/item'

module Square
  module Connect
    module API
      module Items
        include Square::Utils::API

        # Provides summary information for all of a merchant's items.
        #
        # @see
        # @note Authentication Required
        # @raise [Square::Error::Unauthorized] Error raised when supplied user credentials are invalid.
        # @return [Square::Connect::Items]
        def items(merchant_id = 'me')
          object_from_response(Square::Connect::Item, :get, "/#{merchant_id}/items")
        end
      end
    end
  end
end
