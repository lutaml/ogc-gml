# frozen_string_literal: true

# --- topo_complex_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
# require_relative "topo_complex_property"
require_relative "topo_primitive_array_association"
require_relative "topo_primitive_member"

module Ogc
  module Gml
    class TopoComplexProperty < Shale::Mapper
    end

    class TopoComplex < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :is_maximal, Shale::Type::Boolean, default: -> { "false" }
      attribute :aggregation_type, Shale::Type::String
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :maximal_complex, TopoComplexProperty
      attribute :super_complex, TopoComplexProperty, collection: true
      attribute :sub_complex, TopoComplexProperty, collection: true
      attribute :topo_primitive_member, TopoPrimitiveMember, collection: true
      attribute :topo_primitive_members, TopoPrimitiveArrayAssociation

      xml do
        root "TopoComplex"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "isMaximal", to: :is_maximal
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "maximalComplex", to: :maximal_complex
        map_element "superComplex", to: :super_complex
        map_element "subComplex", to: :sub_complex
        map_element "topoPrimitiveMember", to: :topo_primitive_member
        map_element "topoPrimitiveMembers", to: :topo_primitive_members
      end
    end
  end
end
