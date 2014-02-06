require 'test_helper'

describe Square::Connect::API::Refunds do
  let(:client) { Square::Connect::Client.new }

  describe '#refunds' do
    before do
      stub_get(:connect, 'v1/me/refunds').to_return(body: fixture('refunds.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    let(:refunds) { client.refunds }

    after { WebMock.reset! }

    it 'requests the correct resource' do
      refunds
      assert_request_requested a_get(:connect, 'v1/me/refunds')
    end

    it 'returns an array of instances of Square::Connect::Refund' do
      refunds.count.must_equal refunds.count {|x| x.is_a? Square::Connect::Refund}
    end
  end

end
