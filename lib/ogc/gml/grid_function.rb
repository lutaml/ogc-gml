# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GridFunction < Lutaml::Model::Serializable
      attribute :sequence_rule, SequenceRule
      attribute :start_point, :string

      xml do
        element "GridFunction"
        namespace Namespace

        map_element "sequenceRule", to: :sequence_rule
        map_element "startPoint", to: :start_point
      end
    end
  end
end
