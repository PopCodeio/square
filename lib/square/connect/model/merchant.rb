require 'square/model/identity'

module Square
  module Connect
    class Merchant < Square::Model::Identity

      attr_reader :name, :email, :country_code, :language_code

    end
  end
end
