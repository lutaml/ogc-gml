# frozen_string_literal: true

require "lutaml/model"
require_relative "abstract_general_parameter_value_property"
require_relative "operation_method_property"
require_relative "abstract_general_conversion"

module Ogc
  module Gml
    class Conversion < AbstractGeneralConversion
      attribute :method, OperationMethodProperty
      attribute :parameter_value, AbstractGeneralParameterValueProperty, collection: true

      xml do
        root "Conversion"
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
        map_element "method", to: :method
        map_element "parameterValue", to: :parameter_value
      end
    end
  end
end
