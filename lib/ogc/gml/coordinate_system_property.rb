# frozen_string_literal: true

# --- coordinate_system_property_type.rb ---
require "shale"

require_relative "abstract_coordinate_system"

module Ogc
  module Gml
    class CoordinateSystemProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_coordinate_system, AbstractCoordinateSystem

      xml do
        root "usesCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractCoordinateSystem", to: :abstract_coordinate_system
      end
    end
  end
end
