# frozen_string_literal: true

# --- geometry_array_property_type.rb ---
require "shale"

require_relative "abstract_geometry"

module Ogc
  module Gml
    class GeometryArrayProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_geometry, AbstractGeometry, collection: true

      xml do
        root "geometryMembers"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractGeometry", to: :abstract_geometry
      end
    end
  end
end
