# frozen_string_literal: true

# --- related_time_type.rb ---
require "shale"

require_relative "abstract_time_primitive"

module Ogc
  module Gml
    class RelatedTime < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :relative_position, Shale::Type::String
      attribute :abstract_time_primitive, AbstractTimePrimitive

      xml do
        root "RelatedTimeType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_attribute "relativePosition", to: :relative_position
        map_element "AbstractTimePrimitive", to: :abstract_time_primitive
      end
    end
  end
end
