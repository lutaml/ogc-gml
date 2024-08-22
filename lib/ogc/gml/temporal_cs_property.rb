# frozen_string_literal: true

require "lutaml/model"

require_relative "temporal_cs"

module Ogc
  module Gml
    class TemporalCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
