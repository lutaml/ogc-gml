# frozen_string_literal: true

require "lutaml/model"

require_relative "geodetic_crs"

module Ogc
  module Gml
    class GeodeticCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :geodetic_crs, GeodeticCRS

      xml do
        element "baseGeodeticCRS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "GeodeticCRS", to: :geodetic_crs
      end
    end
  end
end
