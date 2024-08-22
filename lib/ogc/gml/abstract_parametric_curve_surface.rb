# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractParametricCurveSurface < Lutaml::Model::Serializable
      attribute :aggregation_type, :string

      xml do
        root "AbstractParametricCurveSurface"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "aggregationType", to: :aggregation_type
      end
    end
  end
end
