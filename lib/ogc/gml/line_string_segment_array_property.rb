# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class LineStringSegmentArrayProperty < Lutaml::Model::Serializable
      attribute :line_string_segment, LineStringSegment, collection: true

      xml do
        element "LineStringSegmentArrayPropertyType"
        namespace Namespace

        map_element "LineStringSegment", to: :line_string_segment
      end
    end
  end
end
