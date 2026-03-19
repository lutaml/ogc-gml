# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class SequenceRule < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :order, :string
      attribute :axis_order, :string

      xml do
        element "SequenceRuleType"
        namespace Namespace

        map_content to: :content
        map_attribute "order", to: :order
        map_attribute "axisOrder", to: :axis_order
      end
    end
  end
end
