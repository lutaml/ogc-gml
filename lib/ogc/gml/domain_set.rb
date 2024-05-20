# frozen_string_literal: true

# --- domain_set_type.rb ---
require "shale"

require_relative "abstract_geometry"
require_relative "abstract_time_object"

module Ogc
  module Gml
    class DomainSet < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_geometry, AbstractGeometry
      attribute :abstract_time_object, AbstractTimeObject

      xml do
        root "rectifiedGridDomain"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractGeometry", to: :abstract_geometry
        map_element "AbstractTimeObject", to: :abstract_time_object
      end
    end
  end
end
