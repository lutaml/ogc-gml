# frozen_string_literal: true

# --- time_node_property_type.rb ---
require "shale"

require_relative "time_node"

module Ogc
  module Gml
    class TimeNodeProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :time_node, TimeNode

      xml do
        root "TimeNodePropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "TimeNode", to: :time_node
      end
    end
  end
end
