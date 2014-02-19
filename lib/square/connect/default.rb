require 'square/connect/configuration'
require 'square/version'

module Square
  module Connect
    module Default

      ENDPOINT = 'https://connect.squareup.com/'.freeze unless defined? Square::Connect::Default::ENDPOINT

      API_VERSION = 1 unless defined? Square::Connect::Default::API_VERSION

      class << self

        # @return [Hash]
        def options
          Hash[Square::Connect::Configuration.keys.map{|key| [key, send(key)]}]
        end

        # @return [Integer]
        def api_version
          API_VERSION
        end

        # @return [String]
        def endpoint
          ENDPOINT
        end
      end

    end
  end
end
