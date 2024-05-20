# frozen_string_literal: true

# --- line_string_segment_array_property_type.rb ---
require "shale"

require_relative "line_string_segment"

module Ogc
  module Gml
    class LineStringSegmentArrayProperty < Shale::Mapper
      attribute :line_string_segment, LineStringSegment, collection: true

      xml do
        root "LineStringSegmentArrayPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "LineStringSegment", to: :line_string_segment
      end
    end
  end
end
