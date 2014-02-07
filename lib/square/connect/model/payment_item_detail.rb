require 'square/model/base'

module Square
  module Connect
    class PaymentItemDetail < Square::Model::Base

      attr_reader :category_name, :sku

    end
  end
end
