# frozen_string_literal: true

# --- time_calendar_era_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "string_or_ref"
require_relative "time_period_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class TimeCalendarEra < AbstractTopology
      attribute :remarks, Shale::Type::String
      attribute :reference_event, StringOrRef
      attribute :reference_date, Shale::Type::Value
      attribute :julian_reference, Shale::Type::Float
      attribute :epoch_of_use, TimePeriodProperty

      xml do
        root "TimeCalendarEra"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "referenceEvent", to: :reference_event
        map_element "referenceDate", to: :reference_date
        map_element "julianReference", to: :julian_reference
        map_element "epochOfUse", to: :epoch_of_use
      end
    end
  end
end
