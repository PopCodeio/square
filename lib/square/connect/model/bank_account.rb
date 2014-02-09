require 'square/model/identity'

module Square
  module Connect
    class BankAccount < Square::Model::Identity

      TYPE = [
        'BUSINESS_CHECKING',
        'CHECKING',
        'INVESTMENT',
        'LOAN',
        'SAVINGS',
        'OTHER'
      ]

      attr_reader :merchant_id, :bank_name,
        :name, :type, :routing_number,
        :account_number_suffix, :currency_code

    end
  end
end
