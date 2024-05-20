# frozen_string_literal: true

# --- engineering_crs_property_type.rb ---
require "shale"

require_relative "engineering_crs"

module Ogc
  module Gml
    class EngineeringCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :engineering_crs, EngineeringCRS

      xml do
        root "engineeringCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "EngineeringCRS", to: :engineering_crs
      end
    end
  end
end
