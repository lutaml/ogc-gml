# frozen_string_literal: true

require "lutaml/model"
require_relative "direct_position"
require_relative "abstract_geometry"

module Ogc
  module Gml
    class Point < AbstractGeometry
      attribute :pos, DirectPosition
      attribute :coordinates, Coordinates

      xml do
        root "Point"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "pos", to: :pos
        map_element "coordinates", to: :coordinates
      end
    end
  end
end
