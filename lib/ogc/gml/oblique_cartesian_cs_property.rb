# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ObliqueCartesianCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :oblique_cartesian_cs, ObliqueCartesianCS

      xml do
        element "usesObliqueCartesianCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "ObliqueCartesianCS", to: :oblique_cartesian_cs
      end
    end
  end
end
