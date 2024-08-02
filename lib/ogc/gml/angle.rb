# frozen_string_literal: true

require "shale"

require_relative "measure"

module Ogc
  module Gml
    # Represents an angle.
    class Angle < Measure
      xml do
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "uom", to: :uom
      end
    end
  end
end
