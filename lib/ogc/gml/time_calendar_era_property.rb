# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeCalendarEraProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :time_calendar_era, TimeCalendarEra

      xml do
        element "TimeCalendarEraPropertyType"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "TimeCalendarEra", to: :time_calendar_era
      end
    end
  end
end
