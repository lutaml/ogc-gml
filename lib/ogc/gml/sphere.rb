# frozen_string_literal: true

# --- sphere_type.rb ---
require "shale"

module Ogc
  module Gml
    class Sphere < Shale::Mapper
      attribute :aggregation_type, Shale::Type::String
      attribute :rows, Shale::Type::Integer
      attribute :columns, Shale::Type::Integer
      attribute :horizontal_curve_type, Shale::Type::String
      attribute :vertical_curve_type, Shale::Type::String

      xml do
        root "Sphere"
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
