# frozen_string_literal: true

require "lutaml/model"

require_relative "oblique_cartesian_cs"

module Ogc
  module Gml
    class ObliqueCartesianCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :oblique_cartesian_cs, ObliqueCartesianCS

      xml do
        root "usesObliqueCartesianCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "ObliqueCartesianCS", to: :oblique_cartesian_cs
      end
    end
  end
end
