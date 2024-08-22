# frozen_string_literal: true

require "lutaml/model"

require_relative "derived_crs"

module Ogc
  module Gml
    class DerivedCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :derived_crs, DerivedCRS

      xml do
        root "derivedCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "DerivedCRS", to: :derived_crs
      end
    end
  end
end
