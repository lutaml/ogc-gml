# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class MultiSurface < AbstractGeometricAggregate
      attribute :surface_member, SurfaceProperty, collection: true
      attribute :surface_members, SurfaceArrayProperty

      xml do
        element "MultiSurface"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
