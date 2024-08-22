# frozen_string_literal: true

require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "string_or_ref"
require_relative "abstract_topology"

module Ogc
  module Gml
    class UnitDefinition < AbstractTopology
      attribute :remarks, Shale::Type::String
      attribute :quantity_type, StringOrRef
      attribute :quantity_type_reference, Reference
      attribute :catalog_symbol, Code

      xml do
        root "UnitDefinition"
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
      end
    end
  end
end
