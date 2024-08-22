# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "curve_property"
require_relative "directed_face_property"
require_relative "directed_node_property"
require_relative "meta_data_property"
require_relative "reference"
require_relative "topo_solid_property"

module Ogc
  module Gml
    class Edge < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :aggregation_type, :string
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :container, TopoSolidProperty
      attribute :directed_node, DirectedNodeProperty, collection: true
      attribute :directed_face, DirectedFaceProperty, collection: true
      attribute :curve_property, CurveProperty

      xml do
        root "Edge"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "container", to: :container
        map_element "directedNode", to: :directed_node
        map_element "directedFace", to: :directed_face
        map_element "curveProperty", to: :curve_property
      end
    end
  end
end
