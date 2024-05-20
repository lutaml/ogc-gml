# frozen_string_literal: true

# --- polygon_patch_type.rb ---
require "shale"

require_relative "shell_property"

module Ogc
  module Gml
    class PolygonPatch < Shale::Mapper
      attribute :interpolation, Shale::Type::String
      attribute :exterior, ShellProperty
      attribute :interior, ShellProperty, collection: true

      xml do
        root "PolygonPatch"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "interpolation", to: :interpolation
        map_element "exterior", to: :exterior
        map_element "interior", to: :interior
      end
    end
  end
end
