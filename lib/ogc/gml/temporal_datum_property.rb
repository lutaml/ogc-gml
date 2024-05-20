# frozen_string_literal: true

# --- temporal_datum_property_type.rb ---
require "shale"

require_relative "temporal_datum"

module Ogc
  module Gml
    class TemporalDatumProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :temporal_datum, TemporalDatum

      xml do
        root "usesTemporalDatum"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "TemporalDatum", to: :temporal_datum
      end
    end
  end
end
