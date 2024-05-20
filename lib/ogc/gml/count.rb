# frozen_string_literal: true

# --- count.rb ---
require "shale"

module Ogc
  module Gml
    class Count < Shale::Mapper
      attribute :content, Shale::Type::Integer
      attribute :nil_reason, Shale::Type::Value

      xml do
        root "Count"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
      end
    end
  end
end
