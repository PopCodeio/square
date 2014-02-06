require 'test_helper'

describe Square::Connect::SettlementEntry do
  let(:settlement_entry) do
    Square::Connect::SettlementEntry.new(
      payment_id: "Jq74mCczmFXk1tC10GB",
      type: "PAYMENT",
      amount_money: {},
      fee_money: {}
    )
  end

  describe '.superclass' do
    it 'is Square::Base' do
      Square::Connect::SettlementEntry.superclass.must_equal Square::Base
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::SettlementEntry' do
      Square::Connect::SettlementEntry.from_response(body: {id: 1}).must_be_instance_of Square::Connect::SettlementEntry
    end
  end

  describe '#type' do
    it 'returns string value' do
      settlement_entry.type.must_equal "PAYMENT"
    end
  end

  describe '#payment_id' do
    it 'returns string value' do
      settlement_entry.payment_id.must_equal "Jq74mCczmFXk1tC10GB"
    end
  end

  describe '#amount_money' do
    it 'returns an instance of Square::Connect::Money' do
      settlement_entry.amount_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#fee_money' do
    it 'returns an instance of Square::Connect::Money' do
      settlement_entry.fee_money.must_be_instance_of Square::Connect::Money
    end
  end

end
