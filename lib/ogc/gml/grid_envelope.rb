# frozen_string_literal: true

# --- grid_envelope_type.rb ---
require "shale"

module Ogc
  module Gml
    class GridEnvelope < Shale::Mapper
      attribute :low, Shale::Type::Value
      attribute :high, Shale::Type::Value

      xml do
        root "GridEnvelopeType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "low", to: :low
        map_element "high", to: :high
      end
    end
  end
end
