# frozen_string_literal: true

require "lutaml/model"

require_relative "engineering_datum"

module Ogc
  module Gml
    class EngineeringDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :engineering_datum, EngineeringDatum

      xml do
        root "usesEngineeringDatum"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "EngineeringDatum", to: :engineering_datum
      end
    end
  end
end
