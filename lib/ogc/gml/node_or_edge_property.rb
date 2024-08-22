# frozen_string_literal: true

require "lutaml/model"

# require_relative "edge"
require_relative "node"

module Ogc
  module Gml
    class Edge < Lutaml::Model::Serializable
    end

    class NodeOrEdgeProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :node, Node
      attribute :edge, Edge

      xml do
        root "NodeOrEdgePropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "Node", to: :node
        map_element "Edge", to: :edge
      end
    end
  end
end
