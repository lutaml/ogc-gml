# frozen_string_literal: true

require "lutaml/model"

require_relative "dynamic_feature"

module Ogc
  module Gml
    class DynamicFeatureMember < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :dynamic_feature, DynamicFeature, collection: true

      xml do
        element "dynamicMembers"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "DynamicFeature", to: :dynamic_feature
      end
    end
  end
end
