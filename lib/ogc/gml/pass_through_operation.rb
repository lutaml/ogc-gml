# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class PassThroughOperation < ConcatenatedOperation
      attribute :modified_coordinate, :integer, collection: true

      xml do
        element "PassThroughOperation"
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
        map_element "modifiedCoordinate", to: :modified_coordinate
        map_element "coordOperation", to: :coord_operation
      end
    end
  end
end
