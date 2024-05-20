# frozen_string_literal: true

# --- tin_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "control_point"
require_relative "length"
require_relative "line_string_segment_array_property"
require_relative "meta_data_property"
require_relative "reference"
require_relative "surface_patch_array_property"

module Ogc
  module Gml
    class Tin < Shale::Mapper
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
      attribute :patches, SurfacePatchArrayProperty
      attribute :stop_lines, LineStringSegmentArrayProperty, collection: true
      attribute :break_lines, LineStringSegmentArrayProperty, collection: true
      attribute :max_length, Length
      attribute :control_point, ControlPoint

      xml do
        root "Tin"
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
        map_element "patches", to: :patches
        map_element "stopLines", to: :stop_lines
        map_element "breakLines", to: :break_lines
        map_element "maxLength", to: :max_length
        map_element "controlPoint", to: :control_point
      end
    end
  end
end
