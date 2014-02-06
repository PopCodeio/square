require 'square/base'
require 'square/core_ext/hash'
require 'square/connect/money'

module Square
  module Connect
    class PaymentDiscount < Square::Base

      attr_reader :name

      def applied_money
        return unless @attrs[:applied_money]
        @applied_money ||= Square::Connect::Money.new(@attrs[:applied_money].deep_symbolize_keys)
      end

    end
  end
end
