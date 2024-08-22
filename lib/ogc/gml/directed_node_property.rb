# frozen_string_literal: true

require "lutaml/model"

require_relative "node"

module Ogc
  module Gml
    class DirectedNodeProperty < Lutaml::Model::Serializable
      attribute :orientation, :string, default: -> { "+" }
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :node, Node

      xml do
        root "directedNode"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "orientation", to: :orientation
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "Node", to: :node
      end
    end
  end
end
