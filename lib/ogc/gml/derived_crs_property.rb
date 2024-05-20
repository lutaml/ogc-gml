# frozen_string_literal: true

# --- derived_crs_property_type.rb ---
require "shale"

require_relative "derived_crs"

module Ogc
  module Gml
    class DerivedCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :derived_crs, DerivedCRS

      xml do
        root "derivedCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "DerivedCRS", to: :derived_crs
      end
    end
  end
end
