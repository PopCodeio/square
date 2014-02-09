require 'test_helper'

describe Square::Error::Base do

  describe '.descendants' do
    it 'returns an array of Square::Error::*' do
      descendants = Square::Error::Base.descendants
      descendants.count.must_equal descendants.select{|d| d < Square::Error::Base}.count
    end
  end

  describe '#initialize' do

    describe 'wraps another error class' do
      before do
        class TestError < RuntimeError; end unless defined? TestError

        @exception = begin
          raise TestError.new 'oh...' rescue raise Square::Error::Base
        rescue Square::Error::Base => ex
          ex
        end
      end

      it 'error message' do
        @exception.message.must_equal 'oh...'
      end

      it 'wrapped exception' do
        @exception.wrapped_exception.class.must_equal TestError
      end
    end
  end

end