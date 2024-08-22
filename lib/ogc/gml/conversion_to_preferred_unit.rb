# frozen_string_literal: true

require "lutaml/model"

require_relative "formula"

module Ogc
  module Gml
    class ConversionToPreferredUnit < Lutaml::Model::Serializable
      attribute :uom, :string
      attribute :factor, :float
      attribute :formula, Formula

      xml do
        root "roughConversionToPreferredUnit"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "uom", to: :uom
        map_element "factor", to: :factor
        map_element "formula", to: :formula
      end
    end
  end
end
