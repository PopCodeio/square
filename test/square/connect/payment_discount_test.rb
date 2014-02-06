require 'test_helper'

describe Square::Connect::PaymentDiscount do
  let(:payment_discount) do
    Square::Connect::PaymentDiscount.new(
      name: "B5CX9A21Z",
      applied_money: {}
    )
  end

  describe '.superclass' do
    it 'is Square::Base' do
      Square::Connect::PaymentDiscount.superclass.must_equal Square::Base
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::PaymentDiscount' do
      Square::Connect::PaymentDiscount.from_response(body: {id: 1}).must_be_instance_of Square::Connect::PaymentDiscount
    end
  end

  describe '#name' do
    it 'returns string value' do
      payment_discount.name.must_equal "B5CX9A21Z"
    end
  end

  describe '#applied_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment_discount.applied_money.must_be_instance_of Square::Connect::Money
    end
  end

end
