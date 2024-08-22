# frozen_string_literal: true

require "lutaml/model"

require_relative "dynamic_feature"

module Ogc
  module Gml
    class DynamicFeatureMember < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
