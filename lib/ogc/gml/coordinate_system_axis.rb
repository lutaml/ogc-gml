# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class CoordinateSystemAxis < Lutaml::Model::Serializable
      attribute :id, Identifier
      attribute :uom, :string
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :remarks, :string
      attribute :axis_abbrev, Code
      attribute :axis_direction, CodeWithAuthority
      attribute :minimum_value, :float
      attribute :maximum_value, :float
      attribute :range_meaning, CodeWithAuthority

      xml do
        element "CoordinateSystemAxis"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_attribute "uom", to: :uom
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "axisAbbrev", to: :axis_abbrev
        map_element "axisDirection", to: :axis_direction
        map_element "minimumValue", to: :minimum_value
        map_element "maximumValue", to: :maximum_value
        map_element "rangeMeaning", to: :range_meaning
      end
    end
  end
end
