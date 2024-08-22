# frozen_string_literal: true

require "lutaml/model"

require_relative "topo_surface"

module Ogc
  module Gml
    class TopoSurfaceProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
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
