# frozen_string_literal: true

# --- coordinates_type.rb ---
require "shale"

module Ogc
  module Gml
    class Coordinates < Shale::Mapper
      attribute :content, Shale::Type::String
      attribute :decimal, Shale::Type::String, default: -> { "." }
      attribute :cs, Shale::Type::String, default: -> { "," }
      attribute :ts, Shale::Type::String, default: -> { " " }

      xml do
        root "coordinates"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "decimal", to: :decimal
        map_attribute "cs", to: :cs
        map_attribute "ts", to: :ts
      end
    end
  end
end
