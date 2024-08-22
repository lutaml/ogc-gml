# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "time_calendar_era_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class TimeCalendar < AbstractTopology
      attribute :remarks, :string
      attribute :domain_of_validity, :string
      attribute :reference_frame, TimeCalendarEraProperty, collection: true

      xml do
        root "TimeCalendar"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "referenceFrame", to: :reference_frame
      end
    end
  end
end
