# frozen_string_literal: true

# --- transformation_type.rb ---
require "shale"

require_relative "abstract_general_parameter_value_property"
require_relative "code"
require_relative "code_with_authority"
require_relative "coordinate_operation_accuracy"
require_relative "crs_property"
require_relative "meta_data_property"
require_relative "operation_method_property"
require_relative "reference"
require_relative "abstract_general_transformation"

module Ogc
  module Gml
    class Transformation < AbstractGeneralTransformation
      attribute :method, OperationMethodProperty
      attribute :parameter_value, AbstractGeneralParameterValueProperty, collection: true

      xml do
        root "Transformation"
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
        map_element "method", to: :method
        map_element "parameterValue", to: :parameter_value
      end
    end
  end
end
