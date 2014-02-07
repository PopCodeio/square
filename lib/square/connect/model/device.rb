require 'square/model/identity'

module Square
  module Connect
    class Device < Square::Model::Identity

      attr_reader :name

    end
  end
end
