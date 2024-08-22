# frozen_string_literal: true

require "shale"

require_relative "multi_point"

module Ogc
  module Gml
    class MultiPointProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :multi_point, MultiPoint

      xml do
        root "multiPointProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "MultiPoint", to: :multi_point
      end
    end
  end
end
