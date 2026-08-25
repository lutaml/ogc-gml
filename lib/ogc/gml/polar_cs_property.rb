# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class PolarCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :polar_cs, PolarCS

      xml do
        element "polarCSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "PolarCS", to: :polar_cs
      end
    end
  end
end
