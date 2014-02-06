require 'test_helper'

describe Square::Connect::Client do

  describe '#initialize' do
    it 'returns an instance of Square::Connect::Client' do
      Square::Connect::Client.new.must_be_instance_of Square::Connect::Client
    end
  end

end
