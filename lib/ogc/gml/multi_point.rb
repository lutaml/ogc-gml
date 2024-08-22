# frozen_string_literal: true

require "lutaml/model"
require_relative "point_array_property"
require_relative "point_property"
require_relative "abstract_geometric_aggregate"

module Ogc
  module Gml
    class MultiPoint < AbstractGeometricAggregate
      attribute :point_member, PointProperty, collection: true
      attribute :point_members, PointArrayProperty

      xml do
        root "MultiPoint"
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
        map_element "pointMember", to: :point_member
        map_element "pointMembers", to: :point_members
      end
    end
  end
end
