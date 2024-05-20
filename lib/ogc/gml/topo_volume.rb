# frozen_string_literal: true

# --- topo_volume_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "directed_topo_solid_property"
require_relative "meta_data_property"
require_relative "reference"

module Ogc
  module Gml
    class TopoVolume < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :aggregation_type, Shale::Type::String
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :directed_topo_solid, DirectedTopoSolidProperty, collection: true

      xml do
        root "TopoVolume"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "directedTopoSolid", to: :directed_topo_solid
      end
    end
  end
end
