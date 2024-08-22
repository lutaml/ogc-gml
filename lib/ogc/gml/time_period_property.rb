# frozen_string_literal: true

require "lutaml/model"

require_relative "time_period"

module Ogc
  module Gml
    class TimePeriodProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :time_period, TimePeriod

      xml do
        root "TimePeriodPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "TimePeriod", to: :time_period
      end
    end
  end
end
