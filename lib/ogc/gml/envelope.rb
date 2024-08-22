# frozen_string_literal: true

require "lutaml/model"

require_relative "coordinates"
require_relative "direct_position"

module Ogc
  module Gml
    class Envelope < Lutaml::Model::Serializable
      attribute :srs_name, :string
      attribute :srs_dimension, :integer
      attribute :axis_labels, :string
      attribute :uom_labels, :string
      attribute :lower_corner, DirectPosition
      attribute :upper_corner, DirectPosition
      attribute :pos, DirectPosition, collection: true
      attribute :coordinates, Coordinates

      xml do
        root "Envelope"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
        map_element "lowerCorner", to: :lower_corner
        map_element "upperCorner", to: :upper_corner
        map_element "pos", to: :pos
        map_element "coordinates", to: :coordinates
      end
    end
  end
end
