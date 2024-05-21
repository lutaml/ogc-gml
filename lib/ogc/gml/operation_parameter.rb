# frozen_string_literal: true

# --- operation_parameter_type.rb ---
require "shale"
require_relative "abstract_general_operation_parameter"

module Ogc
  module Gml
    class OperationParameter < AbstractGeneralOperationParameter
      xml do
        root "OperationParameter"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "minimumOccurs", to: :minimum_occurs
      end
    end
  end
end
