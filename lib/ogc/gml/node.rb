# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "directed_edge_property"
require_relative "face_or_topo_solid_property"
require_relative "meta_data_property"
require_relative "point_property"
require_relative "reference"

module Ogc
  module Gml
    class DirectedEdgeProperty < Lutaml::Model::Serializable
    end

    class Node < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :aggregation_type, :string
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :container, FaceOrTopoSolidProperty
      attribute :directed_edge, DirectedEdgeProperty, collection: true
      attribute :point_property, PointProperty

      xml do
        root "Node"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "container", to: :container
        map_element "directedEdge", to: :directed_edge
        map_element "pointProperty", to: :point_property
      end
    end
  end
end
