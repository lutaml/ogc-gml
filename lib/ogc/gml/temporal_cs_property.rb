# frozen_string_literal: true

require "lutaml/model"

require_relative "temporal_cs"

module Ogc
  module Gml
    class TemporalCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :temporal_cs, TemporalCS

      xml do
        root "usesTemporalCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "TemporalCS", to: :temporal_cs
      end
    end
  end
end
