# frozen_string_literal: true

# --- grid_function_type.rb ---
require "shale"

require_relative "sequence_rule"

module Ogc
  module Gml
    class GridFunction < Shale::Mapper
      attribute :sequence_rule, SequenceRule
      attribute :start_point, Shale::Type::Value

      xml do
        root "GridFunction"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "sequenceRule", to: :sequence_rule
        map_element "startPoint", to: :start_point
      end
    end
  end
end
