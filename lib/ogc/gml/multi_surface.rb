# frozen_string_literal: true

# --- multi_surface_type.rb ---
require "shale"
require_relative "abstract_geometric_aggregate"
require_relative "surface_array_property"
require_relative "surface_property"

module Ogc
  module Gml
    class MultiSurface < AbstractGeometricAggregate
      attribute :surface_member, SurfaceProperty, collection: true
      attribute :surface_members, SurfaceArrayProperty

      xml do
        root "MultiSurface"
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
        map_element "surfaceMember", to: :surface_member
        map_element "surfaceMembers", to: :surface_members
      end
    end
  end
end
