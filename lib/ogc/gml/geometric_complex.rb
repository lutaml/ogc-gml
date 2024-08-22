# frozen_string_literal: true

require "shale"
require_relative "geometric_primitive_property"
require_relative "abstract_geometric_aggregate"

module Ogc
  module Gml
    class GeometricComplex < AbstractGeometricAggregate
      attribute :element, GeometricPrimitiveProperty, collection: true

      xml do
        root "GeometricComplex"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "element", to: :element
      end
    end
  end
end
