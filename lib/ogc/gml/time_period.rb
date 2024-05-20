# frozen_string_literal: true

# --- time_period_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "related_time"
require_relative "time_instant_property"
require_relative "time_interval_length"
require_relative "time_position"

module Ogc
  module Gml
    class TimePeriod < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :frame, Shale::Type::Value, default: -> { "#ISO-8601" }
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :related_time, RelatedTime, collection: true
      attribute :begin_position, TimePosition
      attribute :begin, TimeInstantProperty
      attribute :end_position, TimePosition
      attribute :end, TimeInstantProperty
      attribute :duration, Shale::Type::Value
      attribute :time_interval, TimeIntervalLength

      xml do
        root "TimePeriod"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "frame", to: :frame
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "relatedTime", to: :related_time
        map_element "beginPosition", to: :begin_position
        map_element "begin", to: :begin
        map_element "endPosition", to: :end_position
        map_element "end", to: :end
        map_element "duration", to: :duration
        map_element "timeInterval", to: :time_interval
      end
    end
  end
end
