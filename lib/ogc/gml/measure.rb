# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class Measure < Shale::Mapper
      attribute :content, Shale::Type::Float
      attribute :uom, Shale::Type::Value

      xml do
        root "value"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "uom", to: :uom
      end
    end
  end
end
