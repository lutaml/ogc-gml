# frozen_string_literal: true

# --- multi_curve_property_type.rb ---
require "shale"

require_relative "multi_curve"

module Ogc
  module Gml
    class MultiCurveProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :multi_curve, MultiCurve

      xml do
        root "multiCurveProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "MultiCurve", to: :multi_curve
      end
    end
  end
end
