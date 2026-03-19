# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class UnitOfMeasure < Lutaml::Model::Serializable
      attribute :uom, :string

      xml do
        element "unitOfMeasure"
        namespace Namespace

        map_attribute "uom", to: :uom
      end
    end
  end
end
