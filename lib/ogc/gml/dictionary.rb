# frozen_string_literal: true

require "lutaml/model"

require_relative "code_with_authority"
require_relative "dictionary_entry"
require_relative "indirect_entry"
require_relative "meta_data_property"
require_relative "reference"

module Ogc
  module Gml
    class Dictionary < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :aggregation_type, :string
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, :string, collection: true
      attribute :remarks, :string
      attribute :dictionary_entry, DictionaryEntry, collection: true
      attribute :indirect_entry, IndirectEntry, collection: true
      attribute :schema_location, :string

      xml do
        root "Dictionary"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "schemaLocation", to: :schema_location, prefix: "xsi", namespace: "http://www.w3.org/2001/XMLSchema-instance"
        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "aggregationType", to: :aggregation_type, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"

        map_element "metaDataProperty", to: :meta_data_property, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "description", to: :description, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "descriptionReference", to: :description_reference, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "identifier", to: :identifier, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "name", to: :name, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "remarks", to: :remarks
        map_element "dictionaryEntry", to: :dictionary_entry, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "indirectEntry", to: :indirect_entry, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
