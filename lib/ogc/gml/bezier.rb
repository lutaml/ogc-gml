# frozen_string_literal: true

require "lutaml/model"

require_relative "coordinates"
require_relative "direct_position_list"
require_relative "knot_property"
require_relative "point_property"
require_relative "abstract_curve_segment"

module Ogc
  module Gml
    class Bezier < AbstractCurveSegment
      attribute :interpolation, :string, default: -> { "polynomialSpline" }
      attribute :is_polynomial, :boolean
      attribute :knot_type, :string
      attribute :pos, DirectPosition, collection: true
      attribute :point_property, PointProperty, collection: true
      attribute :point_rep, PointProperty, collection: true
      attribute :pos_list, DirectPositionList
      attribute :coordinates, Coordinates
      attribute :degree, :integer
      attribute :knot, KnotProperty, collection: true

      xml do
        root "Bezier"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "numDerivativesAtStart", to: :num_derivatives_at_start
        map_attribute "numDerivativesAtEnd", to: :num_derivatives_at_end
        map_attribute "numDerivativeInterior", to: :num_derivative_interior
        map_attribute "interpolation", to: :interpolation
        map_attribute "isPolynomial", to: :is_polynomial
        map_attribute "knotType", to: :knot_type
        map_element "pos", to: :pos
        map_element "pointProperty", to: :point_property
        map_element "pointRep", to: :point_rep
        map_element "posList", to: :pos_list
        map_element "coordinates", to: :coordinates
        map_element "degree", to: :degree
        map_element "knot", to: :knot
      end
    end
  end
end
