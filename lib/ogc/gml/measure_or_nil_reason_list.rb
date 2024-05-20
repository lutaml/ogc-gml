# frozen_string_literal: true

# --- measure_or_nil_reason_list_type.rb ---
require "shale"

module Ogc
  module Gml
    class MeasureOrNilReasonList < Shale::Mapper
      attribute :content, Shale::Type::Value
      attribute :uom, Shale::Type::Value

      xml do
        root "QuantityList"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "uom", to: :uom
      end
    end
  end
end
