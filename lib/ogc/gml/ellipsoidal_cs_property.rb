# frozen_string_literal: true

require "lutaml/model"

require_relative "ellipsoidal_cs"

module Ogc
  module Gml
    class EllipsoidalCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :ellipsoidal_cs, EllipsoidalCS

      xml do
        root "usesEllipsoidalCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "EllipsoidalCS", to: :ellipsoidal_cs
      end
    end
  end
end
