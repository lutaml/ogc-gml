# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class Knot < Shale::Mapper
      attribute :value, Shale::Type::Float
      attribute :multiplicity, Shale::Type::Integer
      attribute :weight, Shale::Type::Float

      xml do
        root "KnotType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "value", to: :value
        map_element "multiplicity", to: :multiplicity
        map_element "weight", to: :weight
      end
    end
  end
end
