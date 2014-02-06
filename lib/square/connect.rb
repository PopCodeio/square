require 'square/connect/configuration'
require 'square/connect/client'

module Square
  module Connect
    class << self
      include Square::Connect::Configuration

      # Delegate to a Square::Connect::Client
      #
      # @return [Square::Connect::Client]
      def client
        unless defined?(@client) && @client.hash == options.hash
          @client = Square::Connect::Client.new(options)
        end
        @client
      end

      def respond_to?(method, include_private=false)
        client.respond_to?(method, include_private)
      end

    private

      def method_missing(method, *args, &block)
        return super unless client.respond_to?(method)
        client.send(method, *args, &block)
      end

    end
  end
end

Square::Connect.reset!
