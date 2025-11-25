# frozen_string_literal: true

require "lutaml/model"

require_relative "time_ordinal_era"

module Ogc
  module Gml
    class TimeOrdinalEraProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :time_ordinal_era, TimeOrdinalEra

      xml do
        root "TimeOrdinalEraPropertyType"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "TimeOrdinalEra", to: :time_ordinal_era
      end
    end
  end
end
