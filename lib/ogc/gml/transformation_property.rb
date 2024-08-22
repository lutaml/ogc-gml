# frozen_string_literal: true

require "lutaml/model"

require_relative "transformation"

module Ogc
  module Gml
    class TransformationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :transformation, Transformation

      xml do
        root "transformationRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "Transformation", to: :transformation
      end
    end
  end
end
