require 'square/base'

module Square
  module Connect
    class Money < Square::Base

      attr_reader :amount, :currency_code

    end
  end
end
