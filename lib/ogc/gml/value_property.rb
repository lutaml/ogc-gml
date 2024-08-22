# frozen_string_literal: true

require "shale"

require_relative "abstract_geometry"
require_relative "abstract_time_object"

module Ogc
  module Gml
    class ValueProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_value, Shale::Type::Value
      attribute :abstract_geometry, AbstractGeometry
      attribute :abstract_time_object, AbstractTimeObject
      attribute :null, Shale::Type::Value

      xml do
        root "valueComponent"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractValue", to: :abstract_value
        map_element "AbstractGeometry", to: :abstract_geometry
        map_element "AbstractTimeObject", to: :abstract_time_object
        map_element "Null", to: :null
      end
    end
  end
end
