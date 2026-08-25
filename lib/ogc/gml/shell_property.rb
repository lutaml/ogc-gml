# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ShellProperty < Lutaml::Model::Serializable
      attribute :shell, Shell
      attribute :ring, Ring
      attribute :linear_ring, LinearRing

      xml do
        element "ShellPropertyType"
        namespace Namespace

        map_element "Shell", to: :shell
        map_element "Ring", to: :ring
        map_element "LinearRing", to: :linear_ring
      end
    end
  end
end
