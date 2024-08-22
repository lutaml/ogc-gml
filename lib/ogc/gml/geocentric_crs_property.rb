# frozen_string_literal: true

require "lutaml/model"

require_relative "geocentric_crs"

module Ogc
  module Gml
    class GeocentricCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
