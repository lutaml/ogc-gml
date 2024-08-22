# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ArrayAssociation < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_object, :string, collection: true

      xml do
        root "members"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractObject", to: :abstract_object
      end
    end
  end
end
