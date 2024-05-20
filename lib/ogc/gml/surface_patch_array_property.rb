# frozen_string_literal: true

# --- surface_patch_array_property_type.rb ---
require "shale"

require_relative "abstract_surface_patch"

module Ogc
  module Gml
    class SurfacePatchArrayProperty < Shale::Mapper
      attribute :abstract_surface_patch, AbstractSurfacePatch, collection: true

      xml do
        root "trianglePatches"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AbstractSurfacePatch", to: :abstract_surface_patch
      end
    end
  end
end
