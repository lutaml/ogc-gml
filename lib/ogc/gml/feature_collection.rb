# frozen_string_literal: true

# --- feature_collection_type.rb ---
require "shale"

require_relative "bounding_shape"
require_relative "code"
require_relative "code_with_authority"
require_relative "feature_array_property"
require_relative "feature_property"
require_relative "location_property"
require_relative "meta_data_property"
require_relative "reference"

module Ogc
  module Gml
    class FeatureCollection < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :bounded_by, BoundingShape
      attribute :location, LocationProperty
      attribute :feature_member, FeatureProperty, collection: true
      attribute :feature_members, FeatureArrayProperty

      xml do
        root "FeatureCollection"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "boundedBy", to: :bounded_by
        map_element "location", to: :location
        map_element "featureMember", to: :feature_member
        map_element "featureMembers", to: :feature_members
      end
    end
  end
end
