# frozen_string_literal: true

require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "time_instant_property"
require_relative "time_interval_length"
require_relative "time_position"
require_relative "abstract_topology"

module Ogc
  module Gml
    class TimeCoordinateSystem < AbstractTopology
      attribute :remarks, Shale::Type::String
      attribute :domain_of_validity, Shale::Type::String
      attribute :origin_position, TimePosition
      attribute :origin, TimeInstantProperty
      attribute :interval, TimeIntervalLength

      xml do
        root "TimeCoordinateSystem"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "originPosition", to: :origin_position
        map_element "origin", to: :origin
        map_element "interval", to: :interval
      end
    end
  end
end
