# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GeometryArrayProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_geometry, AbstractGeometry, collection: true

      xml do
        element "geometryMembers"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "AbstractGeometry", to: :abstract_geometry
      end
    end
  end
end
