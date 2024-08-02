# frozen_string_literal: true

require "shale"

require_relative "abstract_geometric_aggregate"

module Ogc
  module Gml
    class MultiGeometryProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean
      attribute :abstract_geometric_aggregate, AbstractGeometricAggregate

      xml do
        root "multiGeometryProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractGeometricAggregate", to: :abstract_geometric_aggregate
      end
    end
  end
end
