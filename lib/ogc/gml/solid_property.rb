# frozen_string_literal: true

# --- solid_property_type.rb ---
require "shale"

require_relative "abstract_solid"

module Ogc
  module Gml
    class SolidProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_solid, AbstractSolid

      xml do
        root "solidMember"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractSolid", to: :abstract_solid
      end
    end
  end
end
