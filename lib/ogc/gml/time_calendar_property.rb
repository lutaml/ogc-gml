# frozen_string_literal: true

require "lutaml/model"

require_relative "time_calendar"

module Ogc
  module Gml
    class TimeCalendarProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
