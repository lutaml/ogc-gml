# frozen_string_literal: true

require "lutaml/model"

require_relative "prime_meridian"

module Ogc
  module Gml
    class PrimeMeridianProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :prime_meridian, PrimeMeridian

      xml do
        root "primeMeridianRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "PrimeMeridian", to: :prime_meridian
      end
    end
  end
end
