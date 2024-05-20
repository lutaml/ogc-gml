# frozen_string_literal: true

# --- topo_primitive_array_association_type.rb ---
require "shale"

require_relative "abstract_topo_primitive"

module Ogc
  module Gml
    class TopoPrimitiveArrayAssociation < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_topo_primitive, AbstractTopoPrimitive, collection: true

      xml do
        root "topoPrimitiveMembers"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractTopoPrimitive", to: :abstract_topo_primitive
      end
    end
  end
end
