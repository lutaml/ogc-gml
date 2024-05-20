# frozen_string_literal: true

# --- formula_type.rb ---
require "shale"

module Ogc
  module Gml
    class Formula < Shale::Mapper
      attribute :a, Shale::Type::Float
      attribute :b, Shale::Type::Float
      attribute :c, Shale::Type::Float
      attribute :d, Shale::Type::Float

      xml do
        root "FormulaType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "a", to: :a
        map_element "b", to: :b
        map_element "c", to: :c
        map_element "d", to: :d
      end
    end
  end
end
