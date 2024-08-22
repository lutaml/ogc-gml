# frozen_string_literal: true

require "lutaml/model"

require_relative "coordinates"
require_relative "direct_position"
require_relative "time_position"

module Ogc
  module Gml
    class EnvelopeWithTimePeriod < Lutaml::Model::Serializable
      attribute :srs_name, :string
      attribute :srs_dimension, :integer
      attribute :axis_labels, :string
      attribute :uom_labels, :string
      attribute :frame, :string, default: -> { "#ISO-8601" }
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
