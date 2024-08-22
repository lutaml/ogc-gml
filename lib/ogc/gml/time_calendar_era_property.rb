# frozen_string_literal: true

require "lutaml/model"

require_relative "time_calendar_era"

module Ogc
  module Gml
    class TimeCalendarEraProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
