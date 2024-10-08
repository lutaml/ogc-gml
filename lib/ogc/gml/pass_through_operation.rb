# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "coordinate_operation_accuracy"
require_relative "coordinate_operation_property"
require_relative "crs_property"
require_relative "meta_data_property"
require_relative "reference"
require_relative "concatenated_operation"

module Ogc
  module Gml
    class PassThroughOperation < ConcatenatedOperation
      attribute :modified_coordinate, :integer, collection: true

      xml do
        root "PassThroughOperation"
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
        map_element "modifiedCoordinate", to: :modified_coordinate
        map_element "coordOperation", to: :coord_operation
      end
    end
  end
end
