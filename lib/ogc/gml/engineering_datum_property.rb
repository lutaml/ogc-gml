# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class EngineeringDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :engineering_datum, EngineeringDatum

      xml do
        element "usesEngineeringDatum"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "EngineeringDatum", to: :engineering_datum
      end
    end
  end
end
