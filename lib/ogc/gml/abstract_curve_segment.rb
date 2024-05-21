# frozen_string_literal: true

# --- abstract_curve_segment_type.rb ---
require "shale"

module Ogc
  module Gml
    class AbstractCurveSegment < Shale::Mapper
      attribute :num_derivatives_at_start, Shale::Type::Integer#, default: -> { "0" }
      attribute :num_derivatives_at_end, Shale::Type::Integer#, default: -> { "0" }
      attribute :num_derivative_interior, Shale::Type::Integer#, default: -> { "0" }

      xml do
        root "AbstractCurveSegment"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "numDerivativesAtStart", to: :num_derivatives_at_start
        map_attribute "numDerivativesAtEnd", to: :num_derivatives_at_end
        map_attribute "numDerivativeInterior", to: :num_derivative_interior
      end
    end
  end
end
