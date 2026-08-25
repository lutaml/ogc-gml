# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeCalendarProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :time_calendar, TimeCalendar

      xml do
        element "TimeCalendarPropertyType"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "TimeCalendar", to: :time_calendar
      end
    end
  end
end
