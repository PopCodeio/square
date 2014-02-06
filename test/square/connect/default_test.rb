require 'test_helper'

describe Square::Connect::Default do

  describe '.options' do
    it 'returns a hash with the same keys as Square::Connect::Configuration' do
      Square::Connect::Default.options.keys.must_equal Square::Connect::Configuration.keys
    end
  end

  describe '.api_version' do
    it 'returns ::API_VERSION' do
      Square::Connect::Default.api_version.must_equal Square::Connect::Default::API_VERSION
    end
  end

end