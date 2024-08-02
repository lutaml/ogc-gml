# frozen_string_literal: true

require "shale"

require_relative "coordinates"
require_relative "direct_position_list"
require_relative "direct_position"
require_relative "length"
require_relative "point_property"
require_relative "abstract_curve_segment"

module Ogc
  module Gml
    # Circle by center point represents a circle defined by a center point and a
    # radius.
    class CircleByCenterPoint < AbstractCurveSegment
      attribute :interpolation, Shale::Type::String
      attribute :num_arc, Shale::Type::Integer
      attribute :pos, DirectPosition
      attribute :point_property, PointProperty
      attribute :point_rep, PointProperty
      attribute :pos_list, DirectPositionList
      attribute :coordinates, Coordinates
      attribute :radius, Length

      xml do
        root "CircleByCenterPoint"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "numDerivativesAtStart", to: :num_derivatives_at_start
        map_attribute "numDerivativesAtEnd", to: :num_derivatives_at_end
        map_attribute "numDerivativeInterior", to: :num_derivative_interior
        map_attribute "interpolation", to: :interpolation
        map_attribute "numArc", to: :num_arc
        map_element "pos", to: :pos
        map_element "pointProperty", to: :point_property
        map_element "pointRep", to: :point_rep
        map_element "posList", to: :pos_list
        map_element "coordinates", to: :coordinates
        map_element "radius", to: :radius
      end
    end
  end
end
