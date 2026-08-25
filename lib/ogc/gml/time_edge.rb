# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeEdge < AbstractTimeTopologyPrimitive
      attribute :start, TimeNodeProperty
      attribute :end, TimeNodeProperty
      attribute :extent, TimePeriodProperty

      xml do
        element "TimeEdge"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "relatedTime", to: :related_time
        map_element "complex", to: :complex
        map_element "start", to: :start
        map_element "end", to: :end
        map_element "extent", to: :extent
      end
    end
  end
end
