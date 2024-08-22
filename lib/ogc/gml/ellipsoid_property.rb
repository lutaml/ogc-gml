# frozen_string_literal: true

require "lutaml/model"

require_relative "ellipsoid"

module Ogc
  module Gml
    class EllipsoidProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :ellipsoid, Ellipsoid

      xml do
        root "ellipsoidRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "Ellipsoid", to: :ellipsoid
      end
    end
  end
end
