# frozen_string_literal: true

require "shale"

require_relative "edge"

module Ogc
  module Gml
    class DirectedEdgeProperty < Shale::Mapper
      attribute :orientation, Shale::Type::String, default: -> { "+" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :edge, Edge

      xml do
        root "directedEdge"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "orientation", to: :orientation
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "Edge", to: :edge
      end
    end
  end
end
