# frozen_string_literal: true

require "lutaml/model"

require_relative "topo_solid"

module Ogc
  module Gml
    class DirectedTopoSolidProperty < Lutaml::Model::Serializable
      attribute :orientation, :string, default: -> { "+" }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :topo_solid, TopoSolid

      xml do
        element "directedTopoSolid"
        namespace Namespace

        map_attribute "orientation", to: :orientation
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "TopoSolid", to: :topo_solid
      end
    end
  end
end
