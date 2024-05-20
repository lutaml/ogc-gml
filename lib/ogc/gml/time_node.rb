# frozen_string_literal: true

# --- time_node_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "related_time"
# require_relative "time_edge_property"
require_relative "time_instant_property"

module Ogc
  module Gml
    class TimeEdgeProperty < Shale::Mapper
    end

    class TimeNode < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :related_time, RelatedTime, collection: true
      attribute :complex, Reference
      attribute :previous_edge, TimeEdgeProperty, collection: true
      attribute :next_edge, TimeEdgeProperty, collection: true
      attribute :position, TimeInstantProperty

      xml do
        root "TimeNode"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "relatedTime", to: :related_time
        map_element "complex", to: :complex
        map_element "previousEdge", to: :previous_edge
        map_element "nextEdge", to: :next_edge
        map_element "position", to: :position
      end
    end
  end
end
