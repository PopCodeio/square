require 'test_helper'

describe Square::Model::Identity do

  describe '.superclass' do
    it 'is Square::Model::Base' do
      Square::Model::Identity.superclass.must_equal Square::Model::Base
    end
  end

  describe '#initialize' do
    it 'raises ArgumentError with no id' do
      -> { Square::Model::Identity.new }.must_raise ArgumentError
    end
  end

  describe '#==' do
    it 'returns true when ids are the same' do
      identity1 = Square::Model::Identity.new(id: 1, name: 'identity1')
      identity2 = Square::Model::Identity.new(id: 1, name: 'identity2')
      identity1.must_equal identity2
    end

    it 'returns false when ids are different' do
      identity1 = Square::Model::Identity.new(id: 1)
      identity2 = Square::Model::Identity.new(id: 2)
      identity1.wont_equal identity2
    end

    it 'returns false when classes are different' do
      identity1 = Square::Model::Identity.new(id: 1)
      identity2 = Square::Model::Base.new(id: 1)
      identity1.wont_equal identity2
    end
  end

  describe '#id' do
    it 'returns id' do
      identity = Square::Model::Identity.new(id: 1)
      identity.id.must_equal 1
    end
  end

end
