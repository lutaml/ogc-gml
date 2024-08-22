# frozen_string_literal: true

require "lutaml/model"

require_relative "sequence_rule"

module Ogc
  module Gml
    class GridFunction < Lutaml::Model::Serializable
      attribute :sequence_rule, SequenceRule
      attribute :start_point, :string

      xml do
        root "GridFunction"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "sequenceRule", to: :sequence_rule
        map_element "startPoint", to: :start_point
      end
    end
  end
end
