# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class PointArrayProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :point, Point, collection: true

      xml do
        element "pointArrayProperty"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "Point", to: :point
      end
    end
  end
end
