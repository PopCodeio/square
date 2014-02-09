require 'test_helper'

describe Square::Connect::PaymentTax do
  let(:payment_tax) do
    Square::Connect::PaymentTax.new(
      name: "B5CX9A21Z",
      rate: "0.0025",
      inclusion_type: "ADDITIVE",
      applied_money: {}
    )
  end

  describe '.superclass' do
    it 'is Square::Model::Base' do
      Square::Connect::PaymentTax.superclass.must_equal Square::Model::Base
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::PaymentTax' do
      Square::Connect::PaymentTax.from_response(body: {id: 1}).must_be_instance_of Square::Connect::PaymentTax
    end
  end

  describe '#name' do
    it 'returns string value' do
      payment_tax.name.must_equal "B5CX9A21Z"
    end
  end

  describe '#rate' do
    it 'returns string value' do
      payment_tax.rate.must_equal "0.0025"
    end
  end

  describe '#inclusion_type' do
    it 'returns string value' do
      payment_tax.inclusion_type.must_equal "ADDITIVE"
    end
  end

  describe '#applied_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment_tax.applied_money.must_be_instance_of Square::Connect::Money
    end
  end

end
