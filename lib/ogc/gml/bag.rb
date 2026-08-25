# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Bag < AbstractTopology
      attribute :member, AssociationRole, collection: true
      attribute :members, ArrayAssociation

      xml do
        element "Bag"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
