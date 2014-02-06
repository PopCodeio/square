require 'square/base'
require 'square/core_ext/hash'
require 'square/connect/money'
require 'square/connect/api/payments'
require 'time'

module Square
  module Connect
    class Refund < Square::Base

      TYPE = %w(FULL)

      attr_reader :type, :reason, :payment_id

      def created_at
        @created_at ||= Time.parse(@attrs[:created_at])
      end

      def processed_at
        @processed_at ||= Time.parse(@attrs[:processed_at])
      end

      def refunded_money
        return unless @attrs[:refunded_money]
        @refunded_money ||= Square::Connect::Money.new(@attrs[:refunded_money].deep_symbolize_keys)
      end

    end
  end
end
