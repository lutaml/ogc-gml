# frozen_string_literal: true

require "lutaml/model"

require_relative "time_ordinal_era"

module Ogc
  module Gml
    class TimeOrdinalEraProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :time_ordinal_era, TimeOrdinalEra

      xml do
        root "TimeOrdinalEraPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "TimeOrdinalEra", to: :time_ordinal_era
      end
    end
  end
end
