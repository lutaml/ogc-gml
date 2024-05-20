# frozen_string_literal: true

# --- temporal_crs_property_type.rb ---
require "shale"

require_relative "temporal_crs"

module Ogc
  module Gml
    class TemporalCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :temporal_crs, TemporalCRS

      xml do
        root "temporalCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "TemporalCRS", to: :temporal_crs
      end
    end
  end
end
