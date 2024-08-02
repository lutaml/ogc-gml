# frozen_string_literal: true

require "shale"

require_relative "curve_property"
require_relative "length"
require_relative "vector"
require_relative "abstract_curve_segment"

module Ogc
  module Gml
    class OffsetCurve < AbstractCurveSegment
      attribute :offset_base, CurveProperty
      attribute :distance, Length
      attribute :ref_direction, Vector

      xml do
        root "OffsetCurve"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "numDerivativesAtStart", to: :num_derivatives_at_start
        map_attribute "numDerivativesAtEnd", to: :num_derivatives_at_end
        map_attribute "numDerivativeInterior", to: :num_derivative_interior
        map_element "offsetBase", to: :offset_base
        map_element "distance", to: :distance
        map_element "refDirection", to: :ref_direction
      end
    end
  end
end
