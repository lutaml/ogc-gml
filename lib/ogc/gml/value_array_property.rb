# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ValueArrayProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_value, :string, collection: true
      attribute :abstract_geometry, AbstractGeometry, collection: true
      attribute :abstract_time_object, AbstractTimeObject, collection: true
      attribute :null, :string, collection: true

      xml do
        element "valueComponents"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "AbstractValue", to: :abstract_value
        map_element "AbstractGeometry", to: :abstract_geometry
        map_element "AbstractTimeObject", to: :abstract_time_object
        map_element "Null", to: :null
      end
    end
  end
end
