# frozen_string_literal: true

require "shale"

require_relative "code"

module Ogc
  module Gml
    class CodeWithAuthority < Shale::Mapper
      attribute :content, Code
      attribute :code_space, Shale::Type::Value

      xml do
        root "derivedCRSType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "codeSpace", to: :code_space
      end
    end
  end
end
