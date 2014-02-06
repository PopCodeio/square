require 'test_helper'
require 'faraday'

describe Square::Connect::Request do
  before do
    @clean_room = Class.new

    class << @clean_room
      include Square::Connect::Request
    end
  end

  describe '#get' do

    describe 'with success result' do
      before do
        stub_get(:connect, 'square/get').with(query: {a: '1'})
        @clean_room.get('square/get', {a: '1'})
      end

      after { WebMock.reset! }

      it 'requests the correct resource' do
        assert_request_requested a_get(:connect, 'square/get').with(query: {a: '1'})
      end
    end

    describe 'with client error' do
      before do
        stub_get(:connect, 'square/error').to_raise Faraday::Error::ClientError
      end

      after { WebMock.reset! }

      it 'raises Square::Error::ClientError' do
        -> { @clean_room.get('square/error') }.must_raise Square::Error::ClientError
      end
    end

  end

  describe '#post' do

    describe 'with success result' do
      before do
        stub_post(:connect, 'square/post').with(body: {a: '1'})
        @clean_room.post('square/post', {a: '1'})
      end

      after { WebMock.reset! }

      it 'requests the correct resource' do
        assert_request_requested a_post(:connect, 'square/post').with(body: {a: '1'})
      end
    end

    describe 'with client error' do
      before do
        stub_post(:connect, 'square/error').to_raise Faraday::Error::ClientError
      end

      after { WebMock.reset! }

      it 'raises Square::Error::ClientError' do
        -> { @clean_room.post('square/error') }.must_raise Square::Error::ClientError
      end
    end

  end


  describe '#put' do

    describe 'with success result' do
      before do
        stub_put(:connect, 'square/put').with(body: {a: '1'})
      end

      after { WebMock.reset! }

      it 'with custom path and params' do
        @clean_room.put('square/put', {a: '1'})
        assert_request_requested a_put(:connect, 'square/put').with(body: {a: '1'})
      end
    end

    describe 'with client error' do
      before do
        stub_put(:connect, 'square/error').to_raise Faraday::Error::ClientError
      end

      after { WebMock.reset! }

      it 'raises Square::Error::ClientError' do
        -> { @clean_room.put('square/error') }.must_raise Square::Error::ClientError
      end
    end

  end

  describe '#delete' do

    describe 'with success result' do
      before do
        stub_delete(:connect, 'square/delete').with(query: {a: '1'})
        @clean_room.delete('square/delete', {a: '1'})
      end

      after { WebMock.reset! }

      it 'requests the correct resource' do
        assert_request_requested a_delete(:connect, 'square/delete').with(query: {a: '1'})
      end
    end

    describe 'with client error' do
      before do
        stub_delete(:connect, 'square/error').to_raise Faraday::Error::ClientError
      end

      after { WebMock.reset! }

      it 'raises Square::Error::ClientError' do
        -> { @clean_room.delete('square/error') }.must_raise Square::Error::ClientError
      end
    end

  end

end