# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class CurveSegmentArrayProperty < Lutaml::Model::Serializable
      attribute :abstract_curve_segment, AbstractCurveSegment, collection: true
      attribute :arc, Arc, collection: true
      attribute :arc_by_center_point, ArcByCenterPoint, collection: true
      attribute :line_string_segment, LineStringSegment, collection: true
      attribute :geodesic_string, GeodesicString, collection: true

      xml do
        element "segments"
        namespace Namespace
        ordered

        map_element "AbstractCurveSegment", to: :abstract_curve_segment
        map_element "GeodesicString", to: :geodesic_string
        map_element "Arc", to: :arc
        map_element "ArcByCenterPoint", to: :arc_by_center_point
        map_element "LineStringSegment", to: :line_string_segment
      end
    end
  end
end
