# frozen_string_literal: true

require "shale"

require_relative "geodetic_crs"

module Ogc
  module Gml
    class GeodeticCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :geodetic_crs, GeodeticCRS

      xml do
        root "baseGeodeticCRS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "GeodeticCRS", to: :geodetic_crs
      end
    end
  end
end
