# frozen_string_literal: true

# --- dynamic_feature_collection_type.rb ---
require "shale"

require_relative "bounding_shape"
require_relative "code"
require_relative "code_with_authority"
require_relative "dynamic_feature_member"
require_relative "history_property"
require_relative "location_property"
require_relative "meta_data_property"
require_relative "reference"
require_relative "string_or_ref"
require_relative "time_primitive_property"

module Ogc
  module Gml
    class DynamicFeatureCollection < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :bounded_by, BoundingShape
      attribute :location, LocationProperty
      attribute :valid_time, TimePrimitiveProperty
      attribute :history, HistoryProperty
      attribute :data_source, StringOrRef
      attribute :data_source_reference, Reference
      attribute :dynamic_members, DynamicFeatureMember

      xml do
        root "DynamicFeatureCollection"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "boundedBy", to: :bounded_by
        map_element "location", to: :location
        map_element "validTime", to: :valid_time
        map_element "history", to: :history
        map_element "dataSource", to: :data_source
        map_element "dataSourceReference", to: :data_source_reference
        map_element "dynamicMembers", to: :dynamic_members
      end
    end
  end
end
