require 'square/utils/api'
require 'square/connect/model/bank_account'

module Square
  module Connect
    module API
      module BankAccounts
        include Square::Utils::API

        # Returns a bank_account if authentication was successful, otherwise raises {Square::Error::Unauthorized}
        #
        # @see https://connect.squareup.com/docs/connect/endpoints/get-bankaccountid
        # @note Authentication Required
        # @raise [Square::Error::Unauthorized] Error raised when supplied user credentials are invalid.
        # @return [Square::Connect::BankAccount]
        # @param bank_account_id [String]
        # @param merchant_id [String]
        def bank_account(bank_account_id, merchant_id = 'me')
          object_from_response(Square::Connect::BankAccount, :get, "/#{merchant_id}/bank-accounts/#{bank_account_id}")
        end

      end
    end
  end
end
