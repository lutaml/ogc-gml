# frozen_string_literal: true

require "shale"
# require_relative "time_edge_property"
require_relative "time_instant_property"
require_relative "abstract_time_topology_primitive"

module Ogc
  module Gml
    class TimeEdgeProperty < Shale::Mapper
    end

    class TimeNode < AbstractTimeTopologyPrimitive
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
