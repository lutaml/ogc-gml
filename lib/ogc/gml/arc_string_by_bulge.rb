# frozen_string_literal: true

require "lutaml/model"
require_relative "vector"
require_relative "arc_string"

module Ogc
  module Gml
    class ArcStringByBulge < ArcString
      attribute :bulge, :float, collection: true
      attribute :normal, Vector, collection: true

      xml do
        root "ArcStringByBulge"
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
        map_element "bulge", to: :bulge
        map_element "normal", to: :normal
      end
    end
  end
end
