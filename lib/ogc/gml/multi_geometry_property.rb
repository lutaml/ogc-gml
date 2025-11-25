# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_geometric_aggregate"

module Ogc
  module Gml
    class MultiGeometryProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_geometric_aggregate, AbstractGeometricAggregate

      xml do
        root "multiGeometryProperty"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "AbstractGeometricAggregate", to: :abstract_geometric_aggregate
      end
    end
  end
end
