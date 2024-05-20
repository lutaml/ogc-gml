# frozen_string_literal: true

# --- time_clock_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "string_or_ref"
require_relative "time_calendar_property"

module Ogc
  module Gml
    class TimeClock < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :remarks, Shale::Type::String
      attribute :domain_of_validity, Shale::Type::String
      attribute :reference_event, StringOrRef
      attribute :reference_time, Shale::Type::Value
      attribute :utc_reference, Shale::Type::Value
      attribute :date_basis, TimeCalendarProperty, collection: true

      xml do
        root "TimeClock"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "referenceEvent", to: :reference_event
        map_element "referenceTime", to: :reference_time
        map_element "utcReference", to: :utc_reference
        map_element "dateBasis", to: :date_basis
      end
    end
  end
end
