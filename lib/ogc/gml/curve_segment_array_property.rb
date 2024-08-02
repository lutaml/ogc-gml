# frozen_string_literal: true

require "shale"

require_relative "abstract_curve_segment"
require_relative "arc"
require_relative "arc_by_center_point"
require_relative "line_string_segment"
require_relative "geodesic_string"

module Ogc
  module Gml
    class CurveSegmentArrayProperty < Shale::Mapper
      attribute :abstract_curve_segment, AbstractCurveSegment, collection: true
      attribute :arc, Arc, collection: true
      attribute :arc_by_center_point, ArcByCenterPoint, collection: true
      attribute :line_string_segment, LineStringSegment, collection: true
      attribute :geodesic_string, GeodesicString, collection: true

      xml do
        root "segments"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AbstractCurveSegment", to: :abstract_curve_segment
        map_element "GeodesicString", to: :geodesic_string
        map_element "Arc", to: :arc
        map_element "ArcByCenterPoint", to: :arc_by_center_point
        map_element "LineStringSegment", to: :line_string_segment
      end
    end
  end
end
