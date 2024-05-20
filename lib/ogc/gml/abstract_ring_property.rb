# frozen_string_literal: true

# --- abstract_ring_property_type.rb ---
require "shale"

require_relative "abstract_ring"

module Ogc
  module Gml
    class AbstractRingProperty < Shale::Mapper
      attribute :abstract_ring, AbstractRing

      xml do
        root "interior"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AbstractRing", to: :abstract_ring
      end
    end
  end
end
