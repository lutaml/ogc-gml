# frozen_string_literal: true

require "lutaml/model"
require_relative "time_instant_property"
require_relative "time_interval_length"
require_relative "time_position"
require_relative "abstract_time_geometric_primitive"

module Ogc
  module Gml
    class TimePeriod < AbstractTimeGeometricPrimitive
      attribute :begin_position, TimePosition
      attribute :begin, TimeInstantProperty
      attribute :end_position, TimePosition
      attribute :end, TimeInstantProperty
      attribute :duration, :string
      attribute :time_interval, TimeIntervalLength

      xml do
        root "TimePeriod"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "frame", to: :frame
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "relatedTime", to: :related_time
        map_element "beginPosition", to: :begin_position
        map_element "begin", to: :begin
        map_element "endPosition", to: :end_position
        map_element "end", to: :end
        map_element "duration", to: :duration
        map_element "timeInterval", to: :time_interval
      end
    end
  end
end
