# frozen_string_literal: true

require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "related_time"
require_relative "time_node_property"
require_relative "time_period_property"
require_relative "abstract_time_topology_primitive"

module Ogc
  module Gml
    class TimeEdge < AbstractTimeTopologyPrimitive
      attribute :start, TimeNodeProperty
      attribute :end, TimeNodeProperty
      attribute :extent, TimePeriodProperty

      xml do
        root "TimeEdge"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "relatedTime", to: :related_time
        map_element "complex", to: :complex
        map_element "start", to: :start
        map_element "end", to: :end
        map_element "extent", to: :extent
      end
    end
  end
end
