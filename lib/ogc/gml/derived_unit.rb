# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class DerivedUnit < AbstractTopology
      attribute :remarks, :string
      attribute :quantity_type, StringOrRef
      attribute :quantity_type_reference, Reference
      attribute :catalog_symbol, Code
      attribute :derivation_unit_term, DerivationUnitTerm, collection: true

      xml do
        element "DerivedUnit"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "quantityType", to: :quantity_type
        map_element "quantityTypeReference", to: :quantity_type_reference
        map_element "catalogSymbol", to: :catalog_symbol
        map_element "derivationUnitTerm", to: :derivation_unit_term
      end
    end
  end
end
