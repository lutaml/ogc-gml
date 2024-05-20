# frozen_string_literal: true

# --- coverage_function_type.rb ---
require "shale"

require_relative "grid_function"
require_relative "mapping_rule"
require_relative "string_or_ref"

module Ogc
  module Gml
    class CoverageFunction < Shale::Mapper
      attribute :mapping_rule, StringOrRef
      attribute :coverage_mapping_rule, MappingRule
      attribute :grid_function, GridFunction

      xml do
        root "coverageFunction"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "MappingRule", to: :mapping_rule
        map_element "CoverageMappingRule", to: :coverage_mapping_rule
        map_element "GridFunction", to: :grid_function
      end
    end
  end
end
