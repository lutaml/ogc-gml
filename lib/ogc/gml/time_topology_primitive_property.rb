# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_time_topology_primitive"

module Ogc
  module Gml
    class TimeTopologyPrimitiveProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_time_topology_primitive, AbstractTimeTopologyPrimitive

      xml do
        root "TimeTopologyPrimitivePropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractTimeTopologyPrimitive", to: :abstract_time_topology_primitive
      end
    end
  end
end
