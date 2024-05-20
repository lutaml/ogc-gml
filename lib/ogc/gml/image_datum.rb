# frozen_string_literal: true

# --- image_datum_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"

module Ogc
  module Gml
    class ImageDatum < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :remarks, Shale::Type::String
      attribute :domain_of_validity, Shale::Type::String
      attribute :scope, Shale::Type::String, collection: true
      attribute :anchor_definition, Code
      attribute :realization_epoch, Shale::Type::Date
      attribute :pixel_in_cell, CodeWithAuthority

      xml do
        root "ImageDatum"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "scope", to: :scope
        map_element "anchorDefinition", to: :anchor_definition
        map_element "realizationEpoch", to: :realization_epoch
        map_element "pixelInCell", to: :pixel_in_cell
      end
    end
  end
end
