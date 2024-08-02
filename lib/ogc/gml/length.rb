# frozen_string_literal: true

require "shale"

require_relative "measure"

module Ogc
  module Gml
    # Represents a length value in GML.
    class Length < Measure
      xml do
        root "LengthType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "uom", to: :uom
      end
    end
  end
end
