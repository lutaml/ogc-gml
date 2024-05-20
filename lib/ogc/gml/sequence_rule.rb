# frozen_string_literal: true

# --- sequence_rule_type.rb ---
require "shale"

module Ogc
  module Gml
    class SequenceRule < Shale::Mapper
      attribute :content, Shale::Type::String
      attribute :order, Shale::Type::String
      attribute :axis_order, Shale::Type::Value

      xml do
        root "SequenceRuleType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "order", to: :order
        map_attribute "axisOrder", to: :axis_order
      end
    end
  end
end
