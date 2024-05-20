# frozen_string_literal: true

# --- quantity_extent_type.rb ---
require "shale"

require_relative "measure_or_nil_reason_list"

module Ogc
  module Gml
    class QuantityExtent < Shale::Mapper
      attribute :content, MeasureOrNilReasonList

      xml do
        root "QuantityExtent"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
      end
    end
  end
end
