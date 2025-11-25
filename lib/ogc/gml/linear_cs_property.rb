# frozen_string_literal: true

require "lutaml/model"

require_relative "linear_cs"

module Ogc
  module Gml
    class LinearCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :linear_cs, LinearCS

      xml do
        root "linearCSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "LinearCS", to: :linear_cs
      end
    end
  end
end
