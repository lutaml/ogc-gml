# frozen_string_literal: true

# --- code_or_nil_reason_list_type.rb ---
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
