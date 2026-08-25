# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class SphericalCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :spherical_cs, SphericalCS

      xml do
        element "usesSphericalCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "SphericalCS", to: :spherical_cs
      end
    end
  end
end
