# frozen_string_literal: true

# --- time_instant_type.rb ---
require "shale"
require_relative "abstract_time_geometric_primitive"
require_relative "time_position"

module Ogc
  module Gml
    class TimeInstant < AbstractTimeGeometricPrimitive
      attribute :time_position, TimePosition

      xml do
        root "TimeInstant"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "frame", to: :frame
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "relatedTime", to: :related_time
        map_element "timePosition", to: :time_position
      end
    end
  end
end
