# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeCalendarEra < AbstractTopology
      attribute :remarks, :string
      attribute :reference_event, StringOrRef
      attribute :reference_date, :string
      attribute :julian_reference, :float
      attribute :epoch_of_use, TimePeriodProperty

      xml do
        element "TimeCalendarEra"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
