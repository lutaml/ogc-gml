# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_crs"

module Ogc
  module Gml
    class SingleCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :abstract_single_crs, AbstractCRS

      xml do
        root "includesSingleCRS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractSingleCRS", to: :abstract_single_crs
      end
    end
  end
end
