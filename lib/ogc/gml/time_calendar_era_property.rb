# frozen_string_literal: true

require "shale"

require_relative "time_calendar_era"

module Ogc
  module Gml
    class TimeCalendarEraProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :time_calendar_era, TimeCalendarEra

      xml do
        root "TimeCalendarEraPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "TimeCalendarEra", to: :time_calendar_era
      end
    end
  end
end
