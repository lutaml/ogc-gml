# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeClock < AbstractTopology
      attribute :remarks, :string
      attribute :domain_of_validity, :string
      attribute :reference_event, StringOrRef
      attribute :reference_time, :string
      attribute :utc_reference, :string
      attribute :date_basis, TimeCalendarProperty, collection: true

      xml do
        element "TimeClock"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
