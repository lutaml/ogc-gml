# frozen_string_literal: true

require "shale"

require_relative "cartesian_cs"

module Ogc
  module Gml
    class CartesianCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :cartesian_cs, CartesianCS

      xml do
        root "usesCartesianCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "CartesianCS", to: :cartesian_cs
      end
    end
  end
end
