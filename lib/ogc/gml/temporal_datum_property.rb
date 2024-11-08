# frozen_string_literal: true

require "lutaml/model"

require_relative "temporal_datum"

module Ogc
  module Gml
    class TemporalDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
