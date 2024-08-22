# frozen_string_literal: true

require "lutaml/model"
require_relative "bezier"

module Ogc
  module Gml
    class BSpline < Bezier
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
