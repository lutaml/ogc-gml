# frozen_string_literal: true

require "shale"

require_relative "abstract_time_primitive"

module Ogc
  module Gml
    class TimePrimitiveProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_time_primitive, AbstractTimePrimitive

      xml do
        root "validTime"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractTimePrimitive", to: :abstract_time_primitive
      end
    end
  end
end
