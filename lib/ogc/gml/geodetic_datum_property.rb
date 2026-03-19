# frozen_string_literal: true

require "lutaml/model"

require_relative "geodetic_datum"

module Ogc
  module Gml
    class GeodeticDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :geodetic_datum, GeodeticDatum

      xml do
        element "usesGeodeticDatum"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "GeodeticDatum", to: :geodetic_datum
      end
    end
  end
end
