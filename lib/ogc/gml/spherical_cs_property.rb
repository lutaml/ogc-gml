# frozen_string_literal: true

require "lutaml/model"

require_relative "spherical_cs"

module Ogc
  module Gml
    class SphericalCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :spherical_cs, SphericalCS

      xml do
        root "usesSphericalCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "SphericalCS", to: :spherical_cs
      end
    end
  end
end
