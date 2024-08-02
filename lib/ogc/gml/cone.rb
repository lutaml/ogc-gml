# frozen_string_literal: true

require "shale"
require_relative "cylinder"

module Ogc
  module Gml
    class Cone < Cylinder
      xml do
        root "Cone"
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
