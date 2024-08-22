# frozen_string_literal: true

require "lutaml/model"

require_relative "shell_property"

module Ogc
  module Gml
    class Triangle < Lutaml::Model::Serializable
      attribute :interpolation, :string
      attribute :exterior, ShellProperty

      xml do
        root "Triangle"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "interpolation", to: :interpolation
        map_element "exterior", to: :exterior
      end
    end
  end
end
