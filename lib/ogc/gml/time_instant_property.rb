# frozen_string_literal: true

# --- time_instant_property_type.rb ---
require "shale"

require_relative "time_instant"

module Ogc
  module Gml
    class TimeInstantProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :time_instant, TimeInstant

      xml do
        root "TimeInstantPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "TimeInstant", to: :time_instant
      end
    end
  end
end
