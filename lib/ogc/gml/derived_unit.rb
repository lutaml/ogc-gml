# frozen_string_literal: true

# --- derived_unit_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "derivation_unit_term"
require_relative "meta_data_property"
require_relative "reference"
require_relative "string_or_ref"
require_relative "abstract_topology"

module Ogc
  module Gml
    class DerivedUnit < AbstractTopology
      attribute :remarks, Shale::Type::String
      attribute :quantity_type, StringOrRef
      attribute :quantity_type_reference, Reference
      attribute :catalog_symbol, Code
      attribute :derivation_unit_term, DerivationUnitTerm, collection: true

      xml do
        root "DerivedUnit"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
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
