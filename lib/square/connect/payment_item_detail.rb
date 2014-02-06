require 'square/base'

module Square
  module Connect
    class PaymentItemDetail < Square::Base

      attr_reader :category_name, :sku

    end
  end
end
