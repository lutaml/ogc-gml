# frozen_string_literal: true

require "lutaml/model"
require_relative "abstract_general_operation_parameter"

module Ogc
  module Gml
    class OperationParameter < AbstractGeneralOperationParameter
      xml do
        element "OperationParameter"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
