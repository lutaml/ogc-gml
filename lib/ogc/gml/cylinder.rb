# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Cylinder < AbstractGriddedSurface
      attribute :horizontal_curve_type, :string
      attribute :vertical_curve_type, :string

      xml do
        element "Cylinder"
        namespace Namespace

        map_attribute "aggregationType", to: :aggregation_type
        map_attribute "rows", to: :rows
        map_attribute "columns", to: :columns
        map_attribute "horizontalCurveType", to: :horizontal_curve_type
        map_attribute "verticalCurveType", to: :vertical_curve_type
      end
    end
  end
end
