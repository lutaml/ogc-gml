# frozen_string_literal: true

# --- line_string_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "coordinates"
require_relative "direct_position_list"
require_relative "direct_position"
require_relative "meta_data_property"
require_relative "point_property"
require_relative "reference"

module Ogc
  module Gml
    class LineString < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :srs_name, Shale::Type::Value
      attribute :srs_dimension, Shale::Type::Integer
      attribute :axis_labels, Shale::Type::Value
      attribute :uom_labels, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :pos, DirectPosition, collection: true
      attribute :point_property, PointProperty, collection: true
      attribute :point_rep, PointProperty, collection: true
      attribute :pos_list, DirectPositionList
      attribute :coordinates, Coordinates

      xml do
        root "LineString"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "pos", to: :pos
        map_element "pointProperty", to: :point_property
        map_element "pointRep", to: :point_rep
        map_element "posList", to: :pos_list
        map_element "coordinates", to: :coordinates
      end
    end
  end
end
