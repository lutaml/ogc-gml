# frozen_string_literal: true

require "lutaml/model"

require_relative "line_string_segment"

module Ogc
  module Gml
    class LineStringSegmentArrayProperty < Lutaml::Model::Serializable
      attribute :line_string_segment, LineStringSegment, collection: true

      xml do
        root "LineStringSegmentArrayPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "LineStringSegment", to: :line_string_segment
      end
    end
  end
end
