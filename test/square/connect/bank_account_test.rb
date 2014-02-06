require 'test_helper'

describe Square::Connect::BankAccount do
  let(:bank_account) do
    Square::Connect::BankAccount.new(
      id: "JGHJ0343",
      merchant_id: "AV76FTXT15L",
      bank_name: "Chase",
      name: "Dave's Business Account",
      type: "CHECKING",
      routing_number: "012345678",
      account_number_suffix: "1234",
      currency_code: "USD"
    )
  end

  describe '.superclass' do
    it 'is Square::Identity' do
      Square::Connect::BankAccount.superclass.must_equal Square::Identity
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::BankAccount' do
      Square::Connect::BankAccount.from_response(body: {id: 1}).must_be_instance_of Square::Connect::BankAccount
    end
  end

  describe '#merchant_id' do
    it 'returns string value' do
      bank_account.merchant_id.must_equal "AV76FTXT15L"
    end
  end

  describe '#bank_name' do
    it 'returns string value' do
      bank_account.bank_name.must_equal "Chase"
    end
  end

  describe '#name' do
    it 'returns string value' do
      bank_account.name.must_equal "Dave's Business Account"
    end
  end

  describe '#type' do
    it 'returns string value' do
      bank_account.type.must_equal "CHECKING"
    end
  end

  describe '#routing_number' do
    it 'returns string value' do
      bank_account.routing_number.must_equal "012345678"
    end
  end

  describe '#account_number_suffix' do
    it 'returns string value' do
      bank_account.account_number_suffix.must_equal "1234"
    end
  end

  describe '#currency_code' do
    it 'returns string value' do
      bank_account.currency_code.must_equal "USD"
    end
  end

end
