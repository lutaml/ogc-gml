# frozen_string_literal: true

require "shale"

require_relative "geocentric_crs"

module Ogc
  module Gml
    class GeocentricCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :geocentric_crs, GeocentricCRS

      xml do
        root "geocentricCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "GeocentricCRS", to: :geocentric_crs
      end
    end
  end
end
