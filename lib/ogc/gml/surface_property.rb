# frozen_string_literal: true

require "shale"

require_relative "abstract_surface"
require_relative "polygon"

module Ogc
  module Gml
    class SurfaceProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean
      attribute :abstract_surface, AbstractSurface
      attribute :polygon, Polygon

      xml do
        root "extentOf"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractSurface", to: :abstract_surface
        map_element "Polygon", to: :polygon
      end
    end
  end
end
