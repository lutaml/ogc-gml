# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractParametricCurveSurface < Lutaml::Model::Serializable
      attribute :aggregation_type, :string

      xml do
        element "AbstractParametricCurveSurface"
        namespace Namespace

        map_attribute "aggregationType", to: :aggregation_type
      end
    end
  end
end
