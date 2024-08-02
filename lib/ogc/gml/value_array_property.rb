# frozen_string_literal: true

require "shale"

require_relative "abstract_geometry"
require_relative "abstract_time_object"

module Ogc
  module Gml
    # Represents a value array property.
    class ValueArrayProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean
      attribute :abstract_value, Shale::Type::Value, collection: true
      attribute :abstract_geometry, AbstractGeometry, collection: true
      attribute :abstract_time_object, AbstractTimeObject, collection: true
      attribute :null, Shale::Type::Value, collection: true

      xml do
        root "valueComponents"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractValue", to: :abstract_value
        map_element "AbstractGeometry", to: :abstract_geometry
        map_element "AbstractTimeObject", to: :abstract_time_object
        map_element "Null", to: :null
      end
    end
  end
end
