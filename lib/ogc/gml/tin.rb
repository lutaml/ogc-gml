# frozen_string_literal: true

require "shale"

require_relative "control_point"
require_relative "length"
require_relative "line_string_segment_array_property"
require_relative "surface_patch_array_property"
require_relative "abstract_geometry"

module Ogc
  module Gml
    class Tin < AbstractGeometry
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
