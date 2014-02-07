require 'test_helper'

describe Square::Response::RaiseError do

  describe '#on_complete' do
    before do
      @raise_error = Square::Response::RaiseError.new({}, Square::Error::Base)
    end

    it 'raises 400 Square::Error::BadRequest' do
      -> { @raise_error.on_complete({status: 400}) }.must_raise Square::Error::BadRequest
    end

    it 'raises 401 Square::Error::Unauthorized' do
      -> { @raise_error.on_complete({status: 401}) }.must_raise Square::Error::Unauthorized
    end

    it 'raises 403 Square::Error::Forbidden' do
      -> { @raise_error.on_complete({status: 403}) }.must_raise Square::Error::Forbidden
    end

    it 'raises 404 Square::Error::NotFound' do
      -> { @raise_error.on_complete({status: 404}) }.must_raise Square::Error::NotFound
    end

    it 'raises 406 Square::Error::NotAcceptable' do
      -> { @raise_error.on_complete({status: 406}) }.must_raise Square::Error::NotAcceptable
    end

    it 'raises 500 Square::Error::InternalServerError' do
      -> { @raise_error.on_complete({status: 500}) }.must_raise Square::Error::InternalServerError
    end

    it 'raises 502 Square::Error::BadGateway' do
      -> { @raise_error.on_complete({status: 502}) }.must_raise Square::Error::BadGateway
    end

    it 'raises 503 Square::Error::ServiceUnavailable' do
      -> { @raise_error.on_complete({status: 503}) }.must_raise Square::Error::ServiceUnavailable
    end

    it 'raises 504 Square::Error::GatewayTimeout' do
      -> { @raise_error.on_complete({status: 504}) }.must_raise Square::Error::GatewayTimeout
    end

  end

end