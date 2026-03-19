# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_crs"

module Ogc
  module Gml
    class CRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_crs, AbstractCRS

      xml do
        element "crsRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractCRS", to: :abstract_crs
      end
    end
  end
end
