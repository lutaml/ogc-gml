# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class AbstractMetaData < Shale::Mapper
      attribute :content, Shale::Type::String
      attribute :id, Shale::Type::Value

      xml do
        root "AbstractMetaData"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
