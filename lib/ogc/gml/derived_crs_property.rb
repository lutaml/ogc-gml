# frozen_string_literal: true

require "lutaml/model"

require_relative "derived_crs"

module Ogc
  module Gml
    class DerivedCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :derived_crs, DerivedCRS

      xml do
        root "derivedCRSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "DerivedCRS", to: :derived_crs
      end
    end
  end
end
