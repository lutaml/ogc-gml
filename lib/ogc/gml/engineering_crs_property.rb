# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class EngineeringCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :engineering_crs, EngineeringCRS

      xml do
        element "engineeringCRSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "EngineeringCRS", to: :engineering_crs
      end
    end
  end
end
