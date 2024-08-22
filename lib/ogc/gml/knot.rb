# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Knot < Lutaml::Model::Serializable
      attribute :value, :float
      attribute :multiplicity, :integer
      attribute :weight, :float

      xml do
        root "KnotType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "value", to: :value
        map_element "multiplicity", to: :multiplicity
        map_element "weight", to: :weight
      end
    end
  end
end
