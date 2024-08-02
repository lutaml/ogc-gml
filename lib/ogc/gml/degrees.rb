# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class Degrees < Shale::Mapper
      attribute :content, Shale::Type::Integer
      attribute :direction, Shale::Type::String

      xml do
        root "degrees"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "direction", to: :direction
      end
    end
  end
end
