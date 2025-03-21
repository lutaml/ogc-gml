# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "coordinate_operation_accuracy"
require_relative "meta_data_property"
require_relative "reference"
require_relative "abstract_topology"

module Ogc
  module Gml
    class AbstractGeneralConversion < AbstractTopology
      attribute :remarks, :string
      attribute :domain_of_validity, :string
      attribute :scope, :string, collection: true
      attribute :coordinate_operation_accuracy, CoordinateOperationAccuracy, collection: true

      xml do
        root "AbstractGeneralConversion"
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
        map_element "coordinateOperationAccuracy", to: :coordinate_operation_accuracy
      end
    end
  end
end
