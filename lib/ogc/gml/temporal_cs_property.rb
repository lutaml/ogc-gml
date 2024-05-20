# frozen_string_literal: true

# --- temporal_cs_property_type.rb ---
require "shale"

require_relative "temporal_cs"

module Ogc
  module Gml
    class TemporalCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :temporal_cs, TemporalCS

      xml do
        root "usesTemporalCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "TemporalCS", to: :temporal_cs
      end
    end
  end
end
