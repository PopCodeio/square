require 'test_helper'

describe Square::Connect::API::BankAccounts do
  let(:client) { Square::Connect::Client.new }

  describe '#bank_account' do
    before do
      stub_get(:connect, 'v1/me/bank-accounts/1').to_return(body: fixture('bank_account.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    let(:bank_account) { client.bank_account(1) }

    after { WebMock.reset! }

    it 'requests the correct resource' do
      bank_account
      assert_request_requested a_get(:connect, 'v1/me/bank-accounts/1')
    end

    it 'returns an instance of Square::Connect::BankAccount' do
      bank_account.must_be_instance_of Square::Connect::BankAccount
    end
  end

end
