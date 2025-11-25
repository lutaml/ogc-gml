# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_topo_primitive"

module Ogc
  module Gml
    class TopoPrimitiveArrayAssociation < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_topo_primitive, AbstractTopoPrimitive, collection: true

      xml do
        root "topoPrimitiveMembers"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "AbstractTopoPrimitive", to: :abstract_topo_primitive
      end
    end
  end
end
