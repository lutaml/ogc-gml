# frozen_string_literal: true

require "lutaml/model"

require_relative "geodetic_crs"

module Ogc
  module Gml
    class GeodeticCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
