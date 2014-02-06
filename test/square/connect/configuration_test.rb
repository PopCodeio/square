require 'test_helper'

describe Square::Connect::Configuration do
  before do
    @clean_room = Class.new

    class << @clean_room
      include Square::Connect::Configuration
    end
  end

  describe '#configure' do

    it 'returns an instance of the caller class' do
      @clean_room.configure {|config|}.must_be_instance_of Class
    end

    describe 'api_version' do
      it 'is configurable' do
        @clean_room.configure do |config|
          config.api_version = '1'
        end

        @clean_room.api_version.must_equal '1'
      end
    end

  end

  describe '#reset!' do
    before do
      @clean_room.configure do |config|
        config.api_version = '1'
      end

      @clean_room.reset!
    end

    it 'resets api_version' do
      @clean_room.api_version.must_equal Square::Connect::Default::API_VERSION
    end
  end

end