# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class CoverageFunction < Lutaml::Model::Serializable
      attribute :mapping_rule, StringOrRef
      attribute :coverage_mapping_rule, MappingRule
      attribute :grid_function, GridFunction

      xml do
        element "coverageFunction"
        namespace Namespace

        map_element "MappingRule", to: :mapping_rule
        map_element "CoverageMappingRule", to: :coverage_mapping_rule
        map_element "GridFunction", to: :grid_function
      end
    end
  end
end
