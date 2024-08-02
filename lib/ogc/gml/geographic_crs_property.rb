# frozen_string_literal: true

require "shale"

require_relative "geographic_crs"

module Ogc
  module Gml
    class GeographicCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :geographic_crs, GeographicCRS

      xml do
        root "geographicCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "GeographicCRS", to: :geographic_crs
      end
    end
  end
end
