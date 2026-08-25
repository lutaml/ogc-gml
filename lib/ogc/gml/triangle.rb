# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Triangle < Lutaml::Model::Serializable
      attribute :interpolation, :string
      attribute :exterior, ShellProperty

      xml do
        element "Triangle"
        namespace Namespace

        map_attribute "interpolation", to: :interpolation
        map_element "exterior", to: :exterior
      end
    end
  end
end
