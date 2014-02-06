require 'test_helper'

describe Square::Connect::API::Payments do
  let(:client) { Square::Connect::Client.new }

  describe '#settlement' do
    before do
      stub_get(:connect, 'v1/me/settlements/1').to_return(body: fixture('settlement.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    let(:settlement) { client.settlement(1) }

    after { WebMock.reset! }

    it 'requests the correct resource' do
      settlement
      assert_request_requested a_get(:connect, 'v1/me/settlements/1')
    end

    it 'returns an instance of Square::Connect::Settlement' do
      settlement.must_be_instance_of Square::Connect::Settlement
    end
  end

  describe '#settlements' do
    before do
      stub_get(:connect, 'v1/me/settlements').to_return(body: fixture('settlements.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    let(:settlements) { client.settlements }

    after { WebMock.reset! }

    it 'requests the correct resource' do
      settlements
      assert_request_requested a_get(:connect, 'v1/me/settlements')
    end

    it 'returns an array of instances of Square::Connect::Settlement' do
      settlements.count.must_equal settlements.count {|x| x.is_a? Square::Connect::Settlement}
    end
  end

end
