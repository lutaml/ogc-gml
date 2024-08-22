# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_crs"

module Ogc
  module Gml
    class CRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :abstract_crs, AbstractCRS

      xml do
        root "crsRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractCRS", to: :abstract_crs
      end
    end
  end
end
