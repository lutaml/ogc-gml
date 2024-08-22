# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "directed_edge_property"
require_relative "directed_topo_solid_property"
require_relative "meta_data_property"
require_relative "node_property"
require_relative "reference"
require_relative "surface_property"

module Ogc
  module Gml
    class Face < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :aggregation_type, :string
      attribute :universal, :boolean, default: -> { false }
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :isolated, NodeProperty, collection: true
      attribute :directed_edge, DirectedEdgeProperty, collection: true
      attribute :directed_topo_solid, DirectedTopoSolidProperty, collection: true
      attribute :surface_property, SurfaceProperty

      xml do
        root "Face"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "aggregationType", to: :aggregation_type
        map_attribute "universal", to: :universal
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "isolated", to: :isolated
        map_element "directedEdge", to: :directed_edge
        map_element "directedTopoSolid", to: :directed_topo_solid
        map_element "surfaceProperty", to: :surface_property
      end
    end
  end
end
