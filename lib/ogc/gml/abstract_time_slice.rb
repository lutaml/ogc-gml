# frozen_string_literal: true

# --- abstract_time_slice_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "string_or_ref"
require_relative "time_primitive_property"

module Ogc
  module Gml
    class AbstractTimeSlice < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :valid_time, TimePrimitiveProperty
      attribute :data_source, StringOrRef

      xml do
        root "AbstractTimeSlice"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "validTime", to: :valid_time
        map_element "dataSource", to: :data_source
      end
    end
  end
end
