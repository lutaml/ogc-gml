# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class AbstractParametricCurveSurface < Shale::Mapper
      attribute :aggregation_type, Shale::Type::String

      xml do
        root "AbstractParametricCurveSurface"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "aggregationType", to: :aggregation_type
      end
    end
  end
end
