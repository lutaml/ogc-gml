# frozen_string_literal: true

require "lutaml/model"

require_relative "cylindrical_cs"

module Ogc
  module Gml
    class CylindricalCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :cylindrical_cs, CylindricalCS

      xml do
        root "cylindricalCSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "CylindricalCS", to: :cylindrical_cs
      end
    end
  end
end
