# frozen_string_literal: true

# --- grid_limits_type.rb ---
require "shale"

require_relative "grid_envelope"

module Ogc
  module Gml
    class GridLimits < Shale::Mapper
      attribute :grid_envelope, GridEnvelope

      xml do
        root "GridLimitsType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "GridEnvelope", to: :grid_envelope
      end
    end
  end
end
