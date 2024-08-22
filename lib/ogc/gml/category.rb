# frozen_string_literal: true

require "shale"

require_relative "code"

module Ogc
  module Gml
    class Category < Shale::Mapper
      attribute :content, Code
      attribute :nil_reason, Shale::Type::Value

      xml do
        root "Category"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
      end
    end
  end
end
