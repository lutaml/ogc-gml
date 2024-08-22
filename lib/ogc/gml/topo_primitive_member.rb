# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_topo_primitive"

module Ogc
  module Gml
    class TopoPrimitiveMember < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
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
