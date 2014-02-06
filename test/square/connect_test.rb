require 'test_helper'

describe Square::Connect do

  after do
    Square::Connect.reset!
  end

  describe '.client' do
    it 'returns an instance of Square::Connect::Client' do
      Square::Connect.client.must_be_instance_of Square::Connect::Client
    end
  end

  describe '.respond_to?' do
    it 'delegates to Square::Connect::Client' do
      Square::Connect.respond_to?(:merchant).must_equal true
    end
  end

  describe '.method_missing' do
    it 'delegates to Square::Connect::Client' do
      Square::Connect.access_token.must_be_nil
    end

    it 'raises NoMethodError when undefined method is called' do
      -> { Square::Connect.undefined }.must_raise NoMethodError
    end
  end

end