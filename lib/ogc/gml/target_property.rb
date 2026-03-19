# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_feature"
require_relative "abstract_geometry"

module Ogc
  module Gml
    class TargetProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_feature, AbstractFeature
      attribute :abstract_geometry, AbstractGeometry

      xml do
        element "subject"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractFeature", to: :abstract_feature
        map_element "AbstractGeometry", to: :abstract_geometry
      end
    end
  end
end
