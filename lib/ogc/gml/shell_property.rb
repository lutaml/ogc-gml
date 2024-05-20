# frozen_string_literal: true

# --- shell_property_type.rb ---
require "shale"

require_relative "shell"

module Ogc
  module Gml
    class ShellProperty < Shale::Mapper
      attribute :shell, Shell

      xml do
        root "ShellPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "Shell", to: :shell
      end
    end
  end
end
