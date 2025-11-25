# frozen_string_literal: true

require "lutaml/model"

require_relative "point"

module Ogc
  module Gml
    class PointArrayProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :point, Point, collection: true

      xml do
        root "pointArrayProperty"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "Point", to: :point
      end
    end
  end
end
