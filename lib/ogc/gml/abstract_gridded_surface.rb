# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class AbstractGriddedSurface < Shale::Mapper
      attribute :aggregation_type, Shale::Type::String
      attribute :rows, Shale::Type::Integer
      attribute :columns, Shale::Type::Integer

      xml do
        root "AbstractGriddedSurface"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "aggregationType", to: :aggregation_type
        map_attribute "rows", to: :rows
        map_attribute "columns", to: :columns
      end
    end
  end
end
