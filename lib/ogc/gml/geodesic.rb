# frozen_string_literal: true

# --- geodesic_type.rb ---
require "shale"

require_relative "direct_position_list"
require_relative "direct_position"
require_relative "point_property"

module Ogc
  module Gml
    class Geodesic < Shale::Mapper
      attribute :num_derivatives_at_start, Shale::Type::Integer, default: -> { "0" }
      attribute :num_derivatives_at_end, Shale::Type::Integer, default: -> { "0" }
      attribute :num_derivative_interior, Shale::Type::Integer, default: -> { "0" }
      attribute :interpolation, Shale::Type::String
      attribute :pos_list, DirectPositionList
      attribute :pos, DirectPosition, collection: true
      attribute :point_property, PointProperty, collection: true

      xml do
        root "Geodesic"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "numDerivativesAtStart", to: :num_derivatives_at_start
        map_attribute "numDerivativesAtEnd", to: :num_derivatives_at_end
        map_attribute "numDerivativeInterior", to: :num_derivative_interior
        map_attribute "interpolation", to: :interpolation
        map_element "posList", to: :pos_list
        map_element "pos", to: :pos
        map_element "pointProperty", to: :point_property
      end
    end
  end
end
