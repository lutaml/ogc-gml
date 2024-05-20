# frozen_string_literal: true

# --- b_spline_type.rb ---
require "shale"

require_relative "coordinates"
require_relative "direct_position_list"
require_relative "direct_position"
require_relative "knot_property"
require_relative "point_property"

module Ogc
  module Gml
    class BSpline < Shale::Mapper
      attribute :num_derivatives_at_start, Shale::Type::Integer, default: -> { "0" }
      attribute :num_derivatives_at_end, Shale::Type::Integer, default: -> { "0" }
      attribute :num_derivative_interior, Shale::Type::Integer, default: -> { "0" }
      attribute :interpolation, Shale::Type::String, default: -> { "polynomialSpline" }
      attribute :is_polynomial, Shale::Type::Boolean
      attribute :knot_type, Shale::Type::String
      attribute :pos, DirectPosition, collection: true
      attribute :point_property, PointProperty, collection: true
      attribute :point_rep, PointProperty, collection: true
      attribute :pos_list, DirectPositionList
      attribute :coordinates, Coordinates
      attribute :degree, Shale::Type::Integer
      attribute :knot, KnotProperty, collection: true

      xml do
        root "BSpline"
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
