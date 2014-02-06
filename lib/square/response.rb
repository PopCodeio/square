require 'faraday'
require 'square/error/bad_gateway'
require 'square/error/bad_request'
require 'square/error/forbidden'
require 'square/error/gateway_timeout'
require 'square/error/internal_server_error'
require 'square/error/not_acceptable'
require 'square/error/not_found'
require 'square/error/service_unavailable'
require 'square/error/unauthorized'

module Square
  module Response
    class RaiseError < Faraday::Response::Middleware

      def on_complete(env)
        status_code = env[:status].to_i
        error_class = @klass.errors[status_code]
        raise error_class.from_response(env) if error_class
      end

      def initialize(app, klass)
        @klass = klass
        super(app)
      end

    end
  end
end
