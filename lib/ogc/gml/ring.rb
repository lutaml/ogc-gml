# frozen_string_literal: true

# --- ring_type.rb ---
require "shale"

require_relative "curve_property"

module Ogc
  module Gml
    class Ring < Shale::Mapper
      attribute :aggregation_type, Shale::Type::String
      attribute :curve_member, CurveProperty, collection: true

      xml do
        root "Ring"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "aggregationType", to: :aggregation_type
        map_element "curveMember", to: :curve_member
      end
    end
  end
end
