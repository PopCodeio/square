require 'test_helper'

describe Square::Connect::Settlement do
  let(:settlement) do
    Square::Connect::Settlement.new(
      id: "C:34GEWHCJGPR40",
      status: "SENT",
      bank_account_id: "543654645",
      initiated_at: "2013-01-02T00:00:00.000Z",
      total_money: {},
      entries: [{id: 1}]
    )
  end

  describe '.superclass' do
    it 'is Square::Model::Identity' do
      Square::Connect::Settlement.superclass.must_equal Square::Model::Identity
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::Settlement' do
      Square::Connect::Settlement.from_response(body: {id: 1}).must_be_instance_of Square::Connect::Settlement
    end
  end

  describe '#status' do
    it 'returns string value' do
      settlement.status.must_equal "SENT"
    end
  end

  describe '#bank_account_id' do
    it 'returns string value' do
      settlement.bank_account_id.must_equal "543654645"
    end
  end

  describe '#initiated_at' do
    it 'returns an instance of Time' do
      settlement.initiated_at.must_equal Time.utc(2013, 1, 2)
    end
  end

  describe '#total_money' do
    it 'returns an instance of Square::Connect::Money' do
      settlement.total_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#entries' do
    it 'returns an array of instances of Square::Connect::SettlementEntry' do
      entries = settlement.entries
      entries.count.must_equal entries.count {|t| t.is_a? Square::Connect::SettlementEntry}
    end
  end

end
