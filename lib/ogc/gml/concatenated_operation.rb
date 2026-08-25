# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ConcatenatedOperation < AbstractCoordinateOperation
      attribute :id, Identifier
      attribute :aggregation_type, :string
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :coord_operation, CoordinateOperationProperty, collection: true

      xml do
        element "ConcatenatedOperation"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "scope", to: :scope
        map_element "operationVersion", to: :operation_version
        map_element "coordinateOperationAccuracy",
                    to: :coordinate_operation_accuracy
        map_element "sourceCRS", to: :source_crs
        map_element "targetCRS", to: :target_crs
        map_element "coordOperation", to: :coord_operation
      end
    end
  end
end
