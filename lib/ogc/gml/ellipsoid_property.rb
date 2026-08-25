# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class EllipsoidProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :ellipsoid, Ellipsoid

      xml do
        element "ellipsoidRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "Ellipsoid", to: :ellipsoid
      end
    end
  end
end
