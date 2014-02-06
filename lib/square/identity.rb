require 'square/base'

module Square
  class Identity < Square::Base

    # Initializes a new object
    #
    # @param attrs [Hash]
    # @raise [ArgumentError] Error raised when supplied argument is missing an :id key.
    # @return [Square::Identity]
    def initialize(attrs={})
      super
      raise ArgumentError, "argument must have an :id key" unless id
    end

    # @param other [Square::Identity]
    # @return [Boolean]
    def ==(other)
      super || attr_equal(:id, other) || attrs_equal(other)
    end

    # @return [String]
    def id
      @attrs[:id]
    end

  end
end
