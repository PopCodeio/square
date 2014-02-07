require 'square/error/base'

module Square
  module Error
    # Raised when JSON parsing fails
    class DecodeError < Square::Error::Base
    end
  end
end
