# frozen_string_literal: true

require "lutaml/model"

require_relative "shell_property"

module Ogc
  module Gml
    class PolygonPatch < Lutaml::Model::Serializable
      attribute :interpolation, :string
      attribute :exterior, ShellProperty
      attribute :interior, ShellProperty, collection: true

      xml do
        root "PolygonPatch"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "interpolation", to: :interpolation
        map_element "exterior", to: :exterior
        map_element "interior", to: :interior
      end
    end
  end
end
