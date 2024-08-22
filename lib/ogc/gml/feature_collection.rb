# frozen_string_literal: true

require "lutaml/model"
require_relative "abstract_feature_collection"

module Ogc
  module Gml
    class FeatureCollection < AbstractFeatureCollection
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
