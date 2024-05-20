# frozen_string_literal: true

# --- category_extent_type.rb ---
require "shale"

require_relative "code_or_nil_reason_list"

module Ogc
  module Gml
    class CategoryExtent < Shale::Mapper
      attribute :content, CodeOrNilReasonList

      xml do
        root "CategoryExtent"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
      end
    end
  end
end
