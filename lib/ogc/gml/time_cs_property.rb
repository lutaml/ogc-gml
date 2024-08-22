# frozen_string_literal: true

require "shale"

require_relative "time_cs"

module Ogc
  module Gml
    class TimeCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :time_cs, TimeCS

      xml do
        root "usesTimeCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "TimeCS", to: :time_cs
      end
    end
  end
end
