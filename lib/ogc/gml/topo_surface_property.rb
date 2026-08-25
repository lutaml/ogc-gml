# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TopoSurfaceProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :topo_surface, TopoSurface

      xml do
        element "topoSurfaceProperty"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "TopoSurface", to: :topo_surface
      end
    end
  end
end
