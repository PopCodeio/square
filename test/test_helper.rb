require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start do
  add_filter 'vendor'
end

require 'square'
require 'minitest/autorun'
require 'webmock/minitest'

include WebMock::API

WebMock.disable_net_connect!(allow: 'coveralls.io')

def endpoint_for(api_name)
  case api_name
  when :connect
    Square::Connect::Configuration::ENDPOINT
  else
    ''
  end
end

def a_get(api_name, path)
  a_request(:get, endpoint_for(api_name) + path)
end

def a_post(api_name, path)
  a_request(:post, endpoint_for(api_name) + path)
end

def a_put(api_name, path)
  a_request(:put, endpoint_for(api_name) + path)
end

def a_delete(api_name, path)
  a_request(:delete, endpoint_for(api_name) + path)
end

def stub_get(api_name, path)
  stub_request(:get, endpoint_for(api_name) + path)
end

def stub_post(api_name, path)
  stub_request(:post, endpoint_for(api_name) + path)
end

def stub_put(api_name, path)
  stub_request(:put, endpoint_for(api_name) + path)
end

def stub_delete(api_name, path)
  stub_request(:delete, endpoint_for(api_name) + path)
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file).read
end
