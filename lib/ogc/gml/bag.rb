# frozen_string_literal: true

require "lutaml/model"

require_relative "array_association"
require_relative "association_role"
require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "abstract_topology"

module Ogc
  module Gml
    class Bag < AbstractTopology
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
