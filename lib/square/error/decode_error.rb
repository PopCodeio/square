require 'square/error'

module Square
  class Error
    # Raised when JSON parsing fails
    class DecodeError < Square::Error
    end
  end
end
