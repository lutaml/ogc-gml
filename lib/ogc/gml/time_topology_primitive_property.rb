# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeTopologyPrimitiveProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_time_topology_primitive, AbstractTimeTopologyPrimitive

      xml do
        element "TimeTopologyPrimitivePropertyType"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "AbstractTimeTopologyPrimitive",
                    to: :abstract_time_topology_primitive
      end
    end
  end
end
