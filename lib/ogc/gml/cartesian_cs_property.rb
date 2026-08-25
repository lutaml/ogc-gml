# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class CartesianCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :cartesian_cs, CartesianCS

      xml do
        element "usesCartesianCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "CartesianCS", to: :cartesian_cs
      end
    end
  end
end
