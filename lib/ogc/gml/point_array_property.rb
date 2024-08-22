# frozen_string_literal: true

require "shale"

require_relative "point"

module Ogc
  module Gml
    class PointArrayProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :point, Point, collection: true

      xml do
        root "pointArrayProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "Point", to: :point
      end
    end
  end
end
