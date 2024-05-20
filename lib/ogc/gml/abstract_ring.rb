# frozen_string_literal: true

# --- abstract_ring_type.rb ---
require "shale"

module Ogc
  module Gml
    class AbstractRing < Shale::Mapper
      xml do
        root "AbstractRing"
        namespace "http://www.opengis.net/gml/3.2", "gml"
      end
    end
  end
end
