# frozen_string_literal: true

require "lutaml/model"

require_relative "coordinate_operation_accuracy"
require_relative "crs_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class AbstractCoordinateOperation < AbstractTopology
      attribute :remarks, :string
      attribute :domain_of_validity, :string
      attribute :scope, :string, collection: true
      attribute :operation_version, :string
      attribute :coordinate_operation_accuracy, CoordinateOperationAccuracy, collection: true
      attribute :source_crs, CRSProperty
      attribute :target_crs, CRSProperty

      xml do
        root "AbstractOperation"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
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
      end
    end
  end
end
