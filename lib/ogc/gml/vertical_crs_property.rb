# frozen_string_literal: true

require "lutaml/model"

require_relative "vertical_crs"

module Ogc
  module Gml
    class VerticalCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :vertical_crs, VerticalCRS

      xml do
        root "verticalCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "VerticalCRS", to: :vertical_crs
      end
    end
  end
end
