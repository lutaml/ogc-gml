# frozen_string_literal: true

# --- time_edge_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "related_time"
require_relative "time_node_property"
require_relative "time_period_property"

module Ogc
  module Gml
    class TimeEdge < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :related_time, RelatedTime, collection: true
      attribute :complex, Reference
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
