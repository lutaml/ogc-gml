# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_feature"

module Ogc
  module Gml
    class FeatureProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_feature, AbstractFeature

      xml do
        element "featureProperty"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractFeature", to: :abstract_feature
      end
    end
  end
end
