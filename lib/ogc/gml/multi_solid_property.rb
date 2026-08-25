# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class MultiSolidProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :multi_solid, MultiSolid

      xml do
        element "multiSolidProperty"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "MultiSolid", to: :multi_solid
      end
    end
  end
end
