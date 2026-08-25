# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractCoordinateSystem < Lutaml::Model::Serializable
      attribute :id, Identifier
      attribute :aggregation_type, :string
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :remarks, :string
      attribute :axis, CoordinateSystemAxisProperty, collection: true

      xml do
        element "AbstractCoordinateSystem"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "axis", to: :axis
      end
    end
  end
end
