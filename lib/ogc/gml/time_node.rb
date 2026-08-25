# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeNode < AbstractTimeTopologyPrimitive
      attribute :previous_edge, TimeEdgeProperty, collection: true
      attribute :next_edge, TimeEdgeProperty, collection: true
      attribute :position, TimeInstantProperty

      xml do
        element "TimeNode"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "relatedTime", to: :related_time
        map_element "complex", to: :complex
        map_element "previousEdge", to: :previous_edge
        map_element "nextEdge", to: :next_edge
        map_element "position", to: :position
      end
    end
  end
end
