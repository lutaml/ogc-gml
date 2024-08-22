# frozen_string_literal: true

require "shale"

require_relative "direct_position_list"
require_relative "direct_position"
require_relative "point_property"

module Ogc
  module Gml
    class ControlPoint < Shale::Mapper
      attribute :pos_list, DirectPositionList
      attribute :pos, DirectPosition, collection: true
      attribute :point_property, PointProperty, collection: true

      xml do
        root "controlPoint"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "posList", to: :pos_list
        map_element "pos", to: :pos
        map_element "pointProperty", to: :point_property
      end
    end
  end
end
