# frozen_string_literal: true

require "shale"
require_relative "surface_property"

module Ogc
  module Gml
    class SurfaceProperty < Shale::Mapper
    end

    class Shell < Shale::Mapper
      attribute :aggregation_type, Shale::Type::String
      attribute :surface_member, SurfaceProperty, collection: true

      xml do
        root "Shell"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "aggregationType", to: :aggregation_type
        map_element "surfaceMember", to: :surface_member
      end
    end
  end
end
