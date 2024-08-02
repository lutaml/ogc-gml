# frozen_string_literal: true

require "shale"

require_relative "abstract_geometric_primitive"

module Ogc
  module Gml
    class GeometricPrimitiveProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_geometric_primitive, AbstractGeometricPrimitive

      xml do
        root "GeometricPrimitivePropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractGeometricPrimitive", to: :abstract_geometric_primitive
      end
    end
  end
end
