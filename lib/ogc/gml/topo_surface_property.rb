# frozen_string_literal: true

require "shale"

require_relative "topo_surface"

module Ogc
  module Gml
    # Represents a topo surface property.
    class TopoSurfaceProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean
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
