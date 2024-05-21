# frozen_string_literal: true

# --- operation_parameter_group_type.rb ---
require "shale"
require_relative "abstract_general_operation_parameter_property"
require_relative "abstract_general_operation_parameter"

module Ogc
  module Gml
    class OperationParameterGroup < AbstractGeneralOperationParameter
      attribute :maximum_occurs, Shale::Type::Integer
      attribute :parameter, AbstractGeneralOperationParameterProperty, collection: true

      xml do
        root "OperationParameterGroup"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "minimumOccurs", to: :minimum_occurs
        map_element "maximumOccurs", to: :maximum_occurs
        map_element "parameter", to: :parameter
      end
    end
  end
end
