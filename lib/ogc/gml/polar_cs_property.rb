# frozen_string_literal: true

require "lutaml/model"

require_relative "polar_cs"

module Ogc
  module Gml
    class PolarCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :polar_cs, PolarCS

      xml do
        root "polarCSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "PolarCS", to: :polar_cs
      end
    end
  end
end
