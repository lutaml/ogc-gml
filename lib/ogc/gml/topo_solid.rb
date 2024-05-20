# frozen_string_literal: true

# --- topo_solid_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
# require_relative "directed_face_property"
require_relative "meta_data_property"
require_relative "node_or_edge_property"
require_relative "reference"
require_relative "solid_property"

module Ogc
  module Gml
    class DirectedFaceProperty < Shale::Mapper
    end

    class TopoSolid < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :aggregation_type, Shale::Type::String
      attribute :universal, Shale::Type::Boolean, default: -> { "false" }
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :isolated, NodeOrEdgeProperty, collection: true
      attribute :directed_face, DirectedFaceProperty, collection: true
      attribute :solid_property, SolidProperty

      xml do
        root "TopoSolid"
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
        map_element "directedFace", to: :directed_face
        map_element "solidProperty", to: :solid_property
      end
    end
  end
end
