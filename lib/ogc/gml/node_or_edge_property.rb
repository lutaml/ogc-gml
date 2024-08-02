# frozen_string_literal: true

require "shale"

# require_relative "edge"
require_relative "node"

module Ogc
  module Gml
    class Edge < Shale::Mapper
    end

    class NodeOrEdgeProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean
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
