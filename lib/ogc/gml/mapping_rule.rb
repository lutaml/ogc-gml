# frozen_string_literal: true

# --- mapping_rule_type.rb ---
require "shale"

require_relative "reference"

module Ogc
  module Gml
    class MappingRule < Shale::Mapper
      attribute :rule_definition, Shale::Type::String
      attribute :rule_reference, Reference

      xml do
        root "CoverageMappingRule"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "ruleDefinition", to: :rule_definition
        map_element "ruleReference", to: :rule_reference
      end
    end
  end
end
