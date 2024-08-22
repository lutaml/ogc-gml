# frozen_string_literal: true

require "lutaml/model"

require_relative "compound_crs"

module Ogc
  module Gml
    class CompoundCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :compound_crs, CompoundCRS

      xml do
        root "compoundCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "CompoundCRS", to: :compound_crs
      end
    end
  end
end
