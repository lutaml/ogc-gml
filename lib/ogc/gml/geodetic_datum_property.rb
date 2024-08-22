# frozen_string_literal: true

require "lutaml/model"

require_relative "geodetic_datum"

module Ogc
  module Gml
    class GeodeticDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :geodetic_datum, GeodeticDatum

      xml do
        root "usesGeodeticDatum"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "GeodeticDatum", to: :geodetic_datum
      end
    end
  end
end
