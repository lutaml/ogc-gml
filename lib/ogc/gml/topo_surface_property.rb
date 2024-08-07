# frozen_string_literal: true

# --- topo_surface_property_type.rb ---
require "shale"

require_relative "topo_surface"

module Ogc
  module Gml
    class TopoSurfaceProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :topo_surface, TopoSurface

      xml do
        root "topoSurfaceProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "TopoSurface", to: :topo_surface
      end
    end
  end
end
