# frozen_string_literal: true

# --- topo_primitive_member_type.rb ---
require "shale"

require_relative "abstract_topo_primitive"

module Ogc
  module Gml
    class TopoPrimitiveMember < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_topo_primitive, AbstractTopoPrimitive

      xml do
        root "topoPrimitiveMember"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractTopoPrimitive", to: :abstract_topo_primitive
      end
    end
  end
end
