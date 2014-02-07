require 'test_helper'

describe Square::Connect::Merchant do
  let(:merchant) do
    Square::Connect::Merchant.new(
      id: "JGHJ0343",
      name: "Crazy Dave's Taco Stand",
      email: "dave@example.com",
      country_code: "CA",
      language_code: "en-CA"
    )
  end

  describe '.superclass' do
    it 'is Square::Model::Identity' do
      Square::Connect::Merchant.superclass.must_equal Square::Model::Identity
    end
  end

  describe '.from_response' do
    it 'returns an instance of Square::Connect::Merchant' do
      Square::Connect::Merchant.from_response(body: {id: 1}).must_be_instance_of Square::Connect::Merchant
    end
  end

  describe '#name' do
    it 'returns string value' do
      merchant.name.must_equal "Crazy Dave's Taco Stand"
    end
  end

  describe '#email' do
    it 'returns string value' do
      merchant.email.must_equal "dave@example.com"
    end
  end

  describe '#country_code' do
    it 'returns string value' do
      merchant.country_code.must_equal "CA"
    end
  end

  describe '#language_code' do
    it 'returns string value' do
      merchant.language_code.must_equal "en-CA"
    end
  end

end
