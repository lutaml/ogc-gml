# frozen_string_literal: true

# --- rectangle_type.rb ---
require "shale"

require_relative "shell_property"

module Ogc
  module Gml
    class Rectangle < Shale::Mapper
      attribute :interpolation, Shale::Type::String
      attribute :exterior, ShellProperty

      xml do
        root "Rectangle"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "interpolation", to: :interpolation
        map_element "exterior", to: :exterior
      end
    end
  end
end
