# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class UnitOfMeasure < Lutaml::Model::Serializable
      attribute :uom, :string

      xml do
        root "unitOfMeasure"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "uom", to: :uom
      end
    end
  end
end
