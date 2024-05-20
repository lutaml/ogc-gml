# frozen_string_literal: true

# --- prime_meridian_type.rb ---
require "shale"

require_relative "angle"
require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"

module Ogc
  module Gml
    class PrimeMeridian < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :remarks, Shale::Type::String
      attribute :greenwich_longitude, Angle

      xml do
        root "PrimeMeridian"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "greenwichLongitude", to: :greenwich_longitude
      end
    end
  end
end
