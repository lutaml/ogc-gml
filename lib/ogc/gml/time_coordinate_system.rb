# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeCoordinateSystem < AbstractTopology
      attribute :remarks, :string
      attribute :domain_of_validity, :string
      attribute :origin_position, TimePosition
      attribute :origin, TimeInstantProperty
      attribute :interval, TimeIntervalLength

      xml do
        element "TimeCoordinateSystem"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
