# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractGriddedSurface < Lutaml::Model::Serializable
      attribute :aggregation_type, :string
      attribute :rows, :integer
      attribute :columns, :integer

      xml do
        element "AbstractGriddedSurface"
        namespace Namespace

        map_attribute "aggregationType", to: :aggregation_type
        map_attribute "rows", to: :rows
        map_attribute "columns", to: :columns
      end
    end
  end
end
