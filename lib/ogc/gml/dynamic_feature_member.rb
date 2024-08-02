# frozen_string_literal: true

require "shale"

require_relative "dynamic_feature"

module Ogc
  module Gml
    class DynamicFeatureMember < Shale::Mapper
      attribute :owns, Shale::Type::Boolean
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :dynamic_feature, DynamicFeature, collection: true

      xml do
        root "dynamicMembers"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "DynamicFeature", to: :dynamic_feature
      end
    end
  end
end
