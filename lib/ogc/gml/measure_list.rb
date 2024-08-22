# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class MeasureList < Shale::Mapper
      attribute :content, Shale::Type::Value
      attribute :uom, Shale::Type::Value

      xml do
        root "valueList"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "uom", to: :uom
      end
    end
  end
end
