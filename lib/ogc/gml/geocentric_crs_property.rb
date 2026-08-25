# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GeocentricCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :geocentric_crs, GeocentricCRS

      xml do
        element "geocentricCRSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "GeocentricCRS", to: :geocentric_crs
      end
    end
  end
end
