# frozen_string_literal: true

require "shale"

require_relative "time_calendar"

module Ogc
  module Gml
    class TimeCalendarProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :time_calendar, TimeCalendar

      xml do
        root "TimeCalendarPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "TimeCalendar", to: :time_calendar
      end
    end
  end
end
