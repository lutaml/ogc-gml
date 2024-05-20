# frozen_string_literal: true

# --- knot_property_type.rb ---
require "shale"

require_relative "knot"

module Ogc
  module Gml
    class KnotProperty < Shale::Mapper
      attribute :knot, Knot

      xml do
        root "KnotPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "Knot", to: :knot
      end
    end
  end
end
