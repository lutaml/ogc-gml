# frozen_string_literal: true

# --- concatenated_operation_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "coordinate_operation_accuracy"
require_relative "coordinate_operation_property"
require_relative "crs_property"
require_relative "meta_data_property"
require_relative "reference"

module Ogc
  module Gml
    class ConcatenatedOperation < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :aggregation_type, Shale::Type::String
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :remarks, Shale::Type::String
      attribute :domain_of_validity, Shale::Type::String
      attribute :scope, Shale::Type::String, collection: true
      attribute :operation_version, Shale::Type::String
      attribute :coordinate_operation_accuracy, CoordinateOperationAccuracy, collection: true
      attribute :source_crs, CRSProperty
      attribute :target_crs, CRSProperty
      attribute :coord_operation, CoordinateOperationProperty, collection: true

      xml do
        root "ConcatenatedOperation"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
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
        map_element "coordinateOperationAccuracy", to: :coordinate_operation_accuracy
        map_element "sourceCRS", to: :source_crs
        map_element "targetCRS", to: :target_crs
        map_element "coordOperation", to: :coord_operation
      end
    end
  end
end
