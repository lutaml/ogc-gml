# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class OperationMethod < AbstractTopology
      attribute :remarks, :string
      attribute :formula_citation, FormulaCitation
      attribute :formula, Code
      attribute :source_dimensions, :integer
      attribute :target_dimensions, :integer
      attribute :parameter, AbstractGeneralOperationParameterProperty,
                collection: true

      xml do
        element "OperationMethod"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
