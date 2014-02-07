require 'square/model/base'

module Square
  module Connect
    class Money < Square::Model::Base

      attr_reader :amount, :currency_code

    end
  end
end
