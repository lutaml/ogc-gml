# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "value_array_property"
require_relative "value_property"
require_relative "identifier"

module Ogc
  module Gml
    class ValueArray < Lutaml::Model::Serializable
      attribute :id, Identifier
      attribute :aggregation_type, :string
      attribute :code_space, :string
      attribute :uom, :string
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :value_component, ValueProperty, collection: true
      attribute :value_components, ValueArrayProperty

      xml do
        element "ValueArray"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_attribute "aggregationType", to: :aggregation_type
        map_attribute "codeSpace", to: :code_space
        map_attribute "uom", to: :uom
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "valueComponent", to: :value_component
        map_element "valueComponents", to: :value_components
      end
    end
  end
end
