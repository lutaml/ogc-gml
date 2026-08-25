# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class CircleByCenterPoint < AbstractCurveSegment
      attribute :interpolation, :string
      attribute :num_arc, :integer
      attribute :pos, DirectPosition
      attribute :point_property, PointProperty
      attribute :point_rep, PointProperty
      attribute :pos_list, DirectPositionList
      attribute :coordinates, Coordinates
      attribute :radius, Length

      xml do
        element "CircleByCenterPoint"
        namespace Namespace

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
