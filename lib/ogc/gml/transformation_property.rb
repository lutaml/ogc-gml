# frozen_string_literal: true

require "lutaml/model"

require_relative "transformation"

module Ogc
  module Gml
    class TransformationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :transformation, Transformation

      xml do
        root "transformationRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "Transformation", to: :transformation
      end
    end
  end
end
