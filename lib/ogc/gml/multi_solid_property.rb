# frozen_string_literal: true

require "shale"

require_relative "multi_solid"

module Ogc
  module Gml
    class MultiSolidProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean
      attribute :multi_solid, MultiSolid

      xml do
        root "multiSolidProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "MultiSolid", to: :multi_solid
      end
    end
  end
end
