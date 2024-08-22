# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class Boolean < Shale::Mapper
      attribute :content, Shale::Type::Boolean
      attribute :nil_reason, Shale::Type::Value

      xml do
        root "Boolean"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
      end
    end
  end
end
