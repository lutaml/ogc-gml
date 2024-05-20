# frozen_string_literal: true

# --- abstract_surface_patch_type.rb ---
require "shale"

module Ogc
  module Gml
    class AbstractSurfacePatch < Shale::Mapper
      xml do
        root "AbstractSurfacePatch"
        namespace "http://www.opengis.net/gml/3.2", "gml"
      end
    end
  end
end
