require 'test_helper'

describe Square::Connect::Payment do
  let(:payment) do
    Square::Connect::Payment.new(
      id: "Jq74mCczmFXk1tC10GB",
      merchant_id: "AV76FTXT15L",
      created_at: "2013-01-02T00:00:00.000Z",
      creator_id: "B5CX9A21Z",
      description: "Lunch for one",
      device: {id: "1"},
      inclusive_tax_money: {},
      additive_tax_money: {},
      tax_money: {},
      tip_money: {},
      discount_money: {},
      total_collected_money: {},
      processing_fee_money: {},
      net_total_money: {},
      refunded_money: {},
      inclusive_tax: [{}],
      additive_tax: [{}],
      tender: [{}],
      refunds: [{}],
      itemizations: [{}]

    )
  end

  describe '.superclass' do
    it 'is Square::Model::Identity' do
      Square::Connect::Payment.superclass.must_equal Square::Model::Identity
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::Payment' do
      Square::Connect::Payment.from_response(body: {id: 1}).must_be_instance_of Square::Connect::Payment
    end
  end

  describe '#merchant_id' do
    it 'returns string value' do
      payment.merchant_id.must_equal "AV76FTXT15L"
    end
  end

  describe '#created_at' do
    it 'returns an instance of Time' do
      payment.created_at.must_equal Time.utc(2013, 1, 2)
    end
  end

  describe '#creator_id' do
    it 'returns string value' do
      payment.creator_id.must_equal "B5CX9A21Z"
    end
  end

  describe '#description' do
    it 'returns string value' do
      payment.description.must_equal "Lunch for one"
    end
  end

  describe '#device' do
    it 'returns an instance of Square::Connect::Device' do
      payment.device.must_be_instance_of Square::Connect::Device
    end
  end

  describe '#inclusive_tax_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.inclusive_tax_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#additive_tax_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.additive_tax_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#tax_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.tax_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#tip_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.tip_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#discount_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.discount_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#total_collected_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.total_collected_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#processing_fee_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.processing_fee_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#net_total_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.net_total_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#refunded_money' do
    it 'returns an instance of Square::Connect::Money' do
      payment.refunded_money.must_be_instance_of Square::Connect::Money
    end
  end

  describe '#inclusive_tax' do
    it 'returns an array of instances of Square::Connect::PaymentTax' do
      tax = payment.inclusive_tax
      tax.count.must_equal tax.count {|t| t.is_a? Square::Connect::PaymentTax}
    end
  end

  describe '#additive_tax' do
    it 'returns an array of instances of Square::Connect::PaymentTax' do
      tax = payment.additive_tax
      tax.count.must_equal tax.count {|t| t.is_a? Square::Connect::PaymentTax}
    end
  end

  describe '#tender' do
    it 'returns an array of instances of Square::Connect::Tender' do
      tender = payment.tender
      tender.count.must_equal tender.count {|t| t.is_a? Square::Connect::Tender}
    end
  end

  describe '#refunds' do
    it 'returns an array of instances of Square::Connect::Refund' do
      refunds = payment.refunds
      refunds.count.must_equal refunds.count {|t| t.is_a? Square::Connect::Refund}
    end
  end

  describe '#itemizations' do
    it 'returns an array of instances of Square::Connect::PaymentItemization' do
      itemizations = payment.itemizations
      itemizations.count.must_equal itemizations.count {|t| t.is_a? Square::Connect::PaymentItemization}
    end
  end
end
