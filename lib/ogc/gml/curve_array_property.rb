# frozen_string_literal: true

# --- curve_array_property_type.rb ---
require "shale"

require_relative "abstract_curve"
require_relative "line_string"

module Ogc
  module Gml
    class CurveArrayProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_curve, AbstractCurve, collection: true
      attribute :curve, Curve, collection: true
      attribute :line_string, LineString, collection: true

      xml do
        root "curveArrayProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractCurve", to: :abstract_curve
        map_element "Curve", to: :curve
        map_element "LineString", to: :line_string
      end
    end
  end
end
