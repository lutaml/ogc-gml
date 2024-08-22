# frozen_string_literal: true

require "lutaml/model"

require_relative "engineering_crs"

module Ogc
  module Gml
    class EngineeringCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :engineering_crs, EngineeringCRS

      xml do
        root "engineeringCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "EngineeringCRS", to: :engineering_crs
      end
    end
  end
end
