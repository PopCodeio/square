require 'test_helper'

describe Square::Connect::API::Merchants do
  let(:client) { Square::Connect::Client.new }

  describe '#merchant' do
    before do
      stub_get(:connect, 'v1/me').to_return(body: fixture('merchant.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    let(:merchant) { client.merchant }

    after { WebMock.reset! }

    it 'requests the correct resource' do
      merchant
      assert_request_requested a_get(:connect, 'v1/me')
    end

    it 'returns an instance of Square::Connect::Merchant' do
      merchant.must_be_instance_of Square::Connect::Merchant
    end
  end

end
