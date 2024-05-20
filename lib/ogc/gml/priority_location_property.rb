# frozen_string_literal: true

# --- priority_location_property_type.rb ---
require "shale"

require_relative "abstract_geometry"
require_relative "code"
require_relative "string_or_ref"

module Ogc
  module Gml
    class PriorityLocationProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :priority, Shale::Type::String
      attribute :abstract_geometry, AbstractGeometry
      attribute :location_key_word, Code
      attribute :location_string, StringOrRef
      attribute :null, Shale::Type::Value

      xml do
        root "priorityLocation"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "priority", to: :priority
        map_element "AbstractGeometry", to: :abstract_geometry
        map_element "LocationKeyWord", to: :location_key_word
        map_element "LocationString", to: :location_string
        map_element "Null", to: :null
      end
    end
  end
end
