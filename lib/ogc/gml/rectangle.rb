# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Rectangle < Lutaml::Model::Serializable
      attribute :interpolation, :string
      attribute :exterior, ShellProperty

      xml do
        element "Rectangle"
        namespace Namespace

        map_attribute "interpolation", to: :interpolation
        map_element "exterior", to: :exterior
      end
    end
  end
end
