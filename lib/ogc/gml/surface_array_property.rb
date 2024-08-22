# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_surface"

module Ogc
  module Gml
    class SurfaceArrayProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_surface, AbstractSurface, collection: true

      xml do
        root "surfaceArrayProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractSurface", to: :abstract_surface
      end
    end
  end
end
