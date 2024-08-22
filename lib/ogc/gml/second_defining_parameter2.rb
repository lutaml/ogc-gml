# frozen_string_literal: true

require "shale"

require_relative "length"
require_relative "measure"

module Ogc
  module Gml
    class SecondDefiningParameter2 < Shale::Mapper
      attribute :inverse_flattening, Measure
      attribute :semi_minor_axis, Length
      attribute :is_sphere, Shale::Type::Boolean, default: -> { "true" }

      xml do
        root "SecondDefiningParameter"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "inverseFlattening", to: :inverse_flattening
        map_element "semiMinorAxis", to: :semi_minor_axis
        map_element "isSphere", to: :is_sphere
      end
    end
  end
end
