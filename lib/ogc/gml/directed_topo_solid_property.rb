# frozen_string_literal: true

require "lutaml/model"

require_relative "topo_solid"

module Ogc
  module Gml
    class DirectedTopoSolidProperty < Lutaml::Model::Serializable
      attribute :orientation, :string, default: -> { "+" }
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :topo_solid, TopoSolid

      xml do
        root "directedTopoSolid"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "orientation", to: :orientation
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "TopoSolid", to: :topo_solid
      end
    end
  end
end
