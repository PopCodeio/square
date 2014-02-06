require 'square/base'
require 'square/core_ext/hash'
require 'square/connect/tax'
require 'square/connect/money'

module Square
  module Connect
    class PaymentTax < Square::Base
      extend Square::Connect::Tax

      attr_reader :name, :rate, :inclusion_type

      def applied_money
        return unless @attrs[:applied_money]
        @applied_money ||= Square::Connect::Money.new(@attrs[:applied_money].deep_symbolize_keys)
      end

    end
  end
end
