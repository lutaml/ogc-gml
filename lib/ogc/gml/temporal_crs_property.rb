# frozen_string_literal: true

require "lutaml/model"

require_relative "temporal_crs"

module Ogc
  module Gml
    class TemporalCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :temporal_crs, TemporalCRS

      xml do
        root "temporalCRSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "TemporalCRS", to: :temporal_crs
      end
    end
  end
end
