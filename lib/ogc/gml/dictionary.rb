# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AggregationType < Lutaml::Model::Type::String
      xml do
        namespace Namespace
      end
    end

    class Dictionary < Lutaml::Model::Serializable
      attribute :id, Identifier
      attribute :aggregation_type, AggregationType
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, :string, collection: true
      attribute :remarks, :string
      attribute :dictionary_entry, DictionaryEntry, collection: true
      attribute :indirect_entry, IndirectEntry, collection: true

      xml do
        element "Dictionary"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_attribute "aggregationType", to: :aggregation_type

        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "dictionaryEntry", to: :dictionary_entry
        map_element "indirectEntry", to: :indirect_entry
      end
    end
  end
end
