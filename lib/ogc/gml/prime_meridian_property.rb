# frozen_string_literal: true

require "lutaml/model"

require_relative "prime_meridian"

module Ogc
  module Gml
    class PrimeMeridianProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :prime_meridian, PrimeMeridian

      xml do
        root "primeMeridianRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "PrimeMeridian", to: :prime_meridian
      end
    end
  end
end
