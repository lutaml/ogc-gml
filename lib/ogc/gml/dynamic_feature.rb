# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class DynamicFeature < AbstractTopology
      attribute :bounded_by, BoundingShape
      attribute :location, LocationProperty
      attribute :valid_time, TimePrimitiveProperty
      attribute :history, HistoryProperty
      attribute :data_source, StringOrRef
      attribute :data_source_reference, Reference

      xml do
        element "DynamicFeature"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "boundedBy", to: :bounded_by
        map_element "location", to: :location
        map_element "validTime", to: :valid_time
        map_element "history", to: :history
        map_element "dataSource", to: :data_source
        map_element "dataSourceReference", to: :data_source_reference
      end
    end
  end
end
