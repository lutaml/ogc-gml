# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class CodeOrNilReasonList < Shale::Mapper
      attribute :content, Shale::Type::Value
      attribute :code_space, Shale::Type::Value

      xml do
        root "CategoryList"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "codeSpace", to: :code_space
      end
    end
  end
end
