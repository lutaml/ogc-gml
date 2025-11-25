# frozen_string_literal: true

require "lutaml/model"
require_relative "bounding_shape"
require_relative "feature_array_property"
require_relative "feature_property"
require_relative "location_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class AbstractFeatureCollection < AbstractTopology
      attribute :bounded_by, BoundingShape
      attribute :location, LocationProperty
      attribute :feature_member, FeatureProperty, collection: true
      attribute :feature_members, FeatureArrayProperty

      xml do
        root "AbstractFeatureCollection"
        namespace Namespace

        map_attribute "id", to: :id
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
