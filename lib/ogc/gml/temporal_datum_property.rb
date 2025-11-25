# frozen_string_literal: true

require "lutaml/model"

require_relative "temporal_datum"

module Ogc
  module Gml
    class TemporalDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :temporal_datum, TemporalDatum

      xml do
        root "usesTemporalDatum"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "TemporalDatum", to: :temporal_datum
      end
    end
  end
end
