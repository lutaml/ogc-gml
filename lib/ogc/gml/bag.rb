# frozen_string_literal: true

# --- bag_type.rb ---
require "shale"

require_relative "array_association"
require_relative "association_role"
require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"

module Ogc
  module Gml
    class Bag < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :member, AssociationRole, collection: true
      attribute :members, ArrayAssociation

      xml do
        root "Bag"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "member", to: :member
        map_element "members", to: :members
      end
    end
  end
end
