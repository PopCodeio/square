require 'test_helper'

describe Square::Connect::PaymentItemDetail do
  let(:payment_item_detail) do
    Square::Connect::PaymentItemDetail.new(
      category_name: "B5CX9A21Z",
      sku: "XUWE8RES90"
    )
  end

  describe '.superclass' do
    it 'is Square::Base' do
      Square::Connect::PaymentItemDetail.superclass.must_equal Square::Base
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::PaymentItemDetail' do
      Square::Connect::PaymentItemDetail.from_response(body: {id: 1}).must_be_instance_of Square::Connect::PaymentItemDetail
    end
  end

  describe '#category_name' do
    it 'returns string value' do
      payment_item_detail.category_name.must_equal "B5CX9A21Z"
    end
  end

  describe '#sku' do
    it 'returns string value' do
      payment_item_detail.sku.must_equal "XUWE8RES90"
    end
  end

end
