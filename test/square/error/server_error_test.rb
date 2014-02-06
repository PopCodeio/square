require 'test_helper'

describe Square::Error::ServerError do

  describe '#initialize' do

    describe 'with message' do
      it 'returns an error with input message' do
        Square::Error::ServerError.new('abc').message.must_equal 'abc'
      end
    end

    describe 'without message' do
      it 'returns an error with default message' do
        Square::Error::ServerError.new.message.must_equal Square::Error::ServerError::MESSAGE
      end
    end

  end

end
