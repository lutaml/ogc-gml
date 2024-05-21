# frozen_string_literal: true

# --- cylinder_type.rb ---
require "shale"
require_relative "abstract_gridded_surface"

module Ogc
  module Gml
    class Cylinder < AbstractGriddedSurface
      attribute :horizontal_curve_type, Shale::Type::String
      attribute :vertical_curve_type, Shale::Type::String

      xml do
        root "Cylinder"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "aggregationType", to: :aggregation_type
        map_attribute "rows", to: :rows
        map_attribute "columns", to: :columns
        map_attribute "horizontalCurveType", to: :horizontal_curve_type
        map_attribute "verticalCurveType", to: :vertical_curve_type
      end
    end
  end
end
