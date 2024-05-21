# frozen_string_literal: true

# --- operation_method_type.rb ---
require "shale"

require_relative "abstract_general_operation_parameter_property"
require_relative "code"
require_relative "code_with_authority"
require_relative "formula_citation"
require_relative "meta_data_property"
require_relative "reference"
require_relative "abstract_topology"

module Ogc
  module Gml
    class OperationMethod < AbstractTopology
      attribute :remarks, Shale::Type::String
      attribute :formula_citation, FormulaCitation
      attribute :formula, Code
      attribute :source_dimensions, Shale::Type::Integer
      attribute :target_dimensions, Shale::Type::Integer
      attribute :parameter, AbstractGeneralOperationParameterProperty, collection: true

      xml do
        root "OperationMethod"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "formulaCitation", to: :formula_citation
        map_element "formula", to: :formula
        map_element "sourceDimensions", to: :source_dimensions
        map_element "targetDimensions", to: :target_dimensions
        map_element "parameter", to: :parameter
      end
    end
  end
end
