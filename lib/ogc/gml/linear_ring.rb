# frozen_string_literal: true

# --- linear_ring_type.rb ---
require "shale"

require_relative "coordinates"
require_relative "direct_position_list"
require_relative "direct_position"
require_relative "point_property"

module Ogc
  module Gml
    class LinearRing < Shale::Mapper
      attribute :pos, DirectPosition, collection: true
      attribute :point_property, PointProperty, collection: true
      attribute :point_rep, PointProperty, collection: true
      attribute :pos_list, DirectPositionList
      attribute :coordinates, Coordinates

      xml do
        root "LinearRing"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "pos", to: :pos
        map_element "pointProperty", to: :point_property
        map_element "pointRep", to: :point_rep
        map_element "posList", to: :pos_list
        map_element "coordinates", to: :coordinates
      end
    end
  end
end
