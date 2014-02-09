require 'test_helper'

describe Square::Connect::Money do
  let(:money) do
    Square::Connect::Money.new(
      amount: 50,
      currency_code: "USD"
    )
  end

  describe '.superclass' do
    it 'is Square::Model::Base' do
      Square::Connect::Money.superclass.must_equal Square::Model::Base
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::Money' do
      Square::Connect::Money.from_response(body: {id: 1}).must_be_instance_of Square::Connect::Money
    end
  end

  describe '#amount' do
    it 'returns integer value' do
      money.amount.must_equal 50
    end
  end

  describe '#currency_code' do
    it 'returns string value' do
      money.currency_code.must_equal "USD"
    end
  end

end
