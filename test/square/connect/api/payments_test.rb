require 'test_helper'

describe Square::Connect::API::Payments do
  let(:client) { Square::Connect::Client.new }

  describe '#payment' do
    before do
      stub_get(:connect, 'v1/me/payments/1').to_return(body: fixture('payment.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    let(:payment) { client.payment(1) }

    after { WebMock.reset! }

    it 'requests the correct resource' do
      payment
      assert_request_requested a_get(:connect, 'v1/me/payments/1')
    end

    it 'returns an instance of Square::Connect::Payment' do
      payment.must_be_instance_of Square::Connect::Payment
    end
  end

  describe '#payments' do
    before do
      stub_get(:connect, 'v1/me/payments').to_return(body: fixture('payments.json'), headers: {content_type: 'application/json; charset=utf-8'})
    end

    let(:payments) { client.payments }

    after { WebMock.reset! }

    it 'requests the correct resource' do
      payments
      assert_request_requested a_get(:connect, 'v1/me/payments')
    end

    it 'returns an array of instances of Square::Connect::Payment' do
      payments.count.must_equal payments.count {|x| x.is_a? Square::Connect::Payment}
    end
  end

end
