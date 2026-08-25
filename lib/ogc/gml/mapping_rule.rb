# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class MappingRule < Lutaml::Model::Serializable
      attribute :rule_definition, :string
      attribute :rule_reference, Reference

      xml do
        element "CoverageMappingRule"
        namespace Namespace

        map_element "ruleDefinition", to: :rule_definition
        map_element "ruleReference", to: :rule_reference
      end
    end
  end
end
