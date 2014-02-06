require 'square/connect/configuration'
require 'square/version'

module Square
  module Connect
    module Default

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

      end

    end
  end
end
