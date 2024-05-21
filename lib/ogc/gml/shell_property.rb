# frozen_string_literal: true

# --- shell_property_type.rb ---
require "shale"

require_relative "shell"
require_relative "ring"
require_relative "linear_ring"

module Ogc
  module Gml
    class ShellProperty < Shale::Mapper
      attribute :shell, Shell
      attribute :ring, Ring
      attribute :linear_ring, LinearRing

      xml do
        root "ShellPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "Shell", to: :shell
        map_element "Ring", to: :ring
        map_element "LinearRing", to: :linear_ring
      end
    end
  end
end
