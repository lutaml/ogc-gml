# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Formula < Lutaml::Model::Serializable
      attribute :a, :float
      attribute :b, :float
      attribute :c, :float
      attribute :d, :float

      xml do
        root "FormulaType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "a", to: :a
        map_element "b", to: :b
        map_element "c", to: :c
        map_element "d", to: :d
      end
    end
  end
end
