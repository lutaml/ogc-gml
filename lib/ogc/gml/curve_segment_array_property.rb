# frozen_string_literal: true

# --- curve_segment_array_property_type.rb ---
require "shale"

require_relative "abstract_curve_segment"
require_relative "arc"
require_relative "line_string_segment"

module Ogc
  module Gml
    class CurveSegmentArrayProperty < Shale::Mapper
      attribute :abstract_curve_segment, AbstractCurveSegment, collection: true
      attribute :arc, Arc, collection: true
      attribute :line_string_segment, LineStringSegment, collection: true

      xml do
        root "segments"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AbstractCurveSegment", to: :abstract_curve_segment
        map_element "Arc", to: :arc
        map_element "LineStringSegment", to: :line_string_segment
      end
    end
  end
end
