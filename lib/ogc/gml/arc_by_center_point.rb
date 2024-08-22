# frozen_string_literal: true

require "lutaml/model"

require_relative "angle"
require_relative "direct_position"
require_relative "length"
require_relative "arc"

module Ogc
  module Gml
    class ArcByCenterPoint < Arc
      # Overrides Arc
      attribute :pos, DirectPosition
      attribute :point_property, PointProperty

      # Self
      attribute :radius, Length
      attribute :start_angle, Angle
      attribute :end_angle, Angle

      xml do
        root "ArcByCenterPoint"
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
        map_element "startAngle", to: :start_angle
        map_element "endAngle", to: :end_angle
      end
    end
  end
end
