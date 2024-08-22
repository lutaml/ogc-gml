# frozen_string_literal: true

require "lutaml/model"

require_relative "ref_location"
require_relative "abstract_curve_segment"

module Ogc
  module Gml
    class Clothoid < AbstractCurveSegment
      attribute :interpolation, :string
      attribute :ref_location, RefLocation
      attribute :scale_factor, :float
      attribute :start_parameter, :float
      attribute :end_parameter, :float

      xml do
        root "Clothoid"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "numDerivativesAtStart", to: :num_derivatives_at_start
        map_attribute "numDerivativesAtEnd", to: :num_derivatives_at_end
        map_attribute "numDerivativeInterior", to: :num_derivative_interior
        map_attribute "interpolation", to: :interpolation
        map_element "refLocation", to: :ref_location
        map_element "scaleFactor", to: :scale_factor
        map_element "startParameter", to: :start_parameter
        map_element "endParameter", to: :end_parameter
      end
    end
  end
end
