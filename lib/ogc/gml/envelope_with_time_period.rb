# frozen_string_literal: true

require "shale"

require_relative "coordinates"
require_relative "direct_position"
require_relative "time_position"

module Ogc
  module Gml
    class EnvelopeWithTimePeriod < Shale::Mapper
      attribute :srs_name, Shale::Type::Value
      attribute :srs_dimension, Shale::Type::Integer
      attribute :axis_labels, Shale::Type::Value
      attribute :uom_labels, Shale::Type::Value
      attribute :frame, Shale::Type::Value, default: -> { "#ISO-8601" }
      attribute :lower_corner, DirectPosition
      attribute :upper_corner, DirectPosition
      attribute :pos, DirectPosition, collection: true
      attribute :coordinates, Coordinates
      attribute :begin_position, TimePosition
      attribute :end_position, TimePosition

      xml do
        root "EnvelopeWithTimePeriod"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
        map_attribute "frame", to: :frame
        map_element "lowerCorner", to: :lower_corner
        map_element "upperCorner", to: :upper_corner
        map_element "pos", to: :pos
        map_element "coordinates", to: :coordinates
        map_element "beginPosition", to: :begin_position
        map_element "endPosition", to: :end_position
      end
    end
  end
end
