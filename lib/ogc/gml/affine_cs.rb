# frozen_string_literal: true

require "shale"
require_relative "abstract_coordinate_system"

module Ogc
  module Gml
    class AffineCS < AbstractCoordinateSystem
      xml do
        root "AffineCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "axis", to: :axis
      end
    end
  end
end
