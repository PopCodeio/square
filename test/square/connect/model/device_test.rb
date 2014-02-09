require 'test_helper'

describe Square::Connect::Device do
  let(:device) do
    Square::Connect::Device.new(
      id: "JGHJ0343",
      name: "AV76FTXT15L"
    )
  end

  describe '.superclass' do
    it 'is Square::Model::Identity' do
      Square::Connect::Device.superclass.must_equal Square::Model::Identity
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::Device' do
      Square::Connect::Device.from_response(body: {id: 1}).must_be_instance_of Square::Connect::Device
    end
  end

  describe '#name' do
    it 'returns string value' do
      device.name.must_equal "AV76FTXT15L"
    end
  end

end
