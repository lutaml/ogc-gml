# frozen_string_literal: true

# --- arc_string_by_bulge_type.rb ---
require "shale"

require_relative "coordinates"
require_relative "direct_position_list"
require_relative "direct_position"
require_relative "point_property"
require_relative "vector"

module Ogc
  module Gml
    class ArcStringByBulge < Shale::Mapper
      attribute :num_derivatives_at_start, Shale::Type::Integer, default: -> { "0" }
      attribute :num_derivatives_at_end, Shale::Type::Integer, default: -> { "0" }
      attribute :num_derivative_interior, Shale::Type::Integer, default: -> { "0" }
      attribute :interpolation, Shale::Type::String
      attribute :num_arc, Shale::Type::Integer
      attribute :pos, DirectPosition, collection: true
      attribute :point_property, PointProperty, collection: true
      attribute :point_rep, PointProperty, collection: true
      attribute :pos_list, DirectPositionList
      attribute :coordinates, Coordinates
      attribute :bulge, Shale::Type::Float, collection: true
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
