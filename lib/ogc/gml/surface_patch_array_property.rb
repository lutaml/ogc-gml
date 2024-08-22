# frozen_string_literal: true

require "shale"

require_relative "abstract_surface_patch"
require_relative "triangle"

module Ogc
  module Gml
    class SurfacePatchArrayProperty < Shale::Mapper
      attribute :abstract_surface_patch, AbstractSurfacePatch, collection: true
      attribute :polygon_patch, PolygonPatch, collection: true
      attribute :rectangle, Rectangle, collection: true
      attribute :triangle, Triangle, collection: true

      xml do
        root "patches"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AbstractSurfacePatch", to: :abstract_surface_patch
        map_element "PolygonPatch", to: :polygon_patch
        map_element "Rectangle", to: :rectangle
        map_element "Triangle", to: :triangle
      end
    end
  end
end
