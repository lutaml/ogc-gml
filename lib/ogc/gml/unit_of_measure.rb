# frozen_string_literal: true

# --- unit_of_measure_type.rb ---
require "shale"

module Ogc
  module Gml
    class UnitOfMeasure < Shale::Mapper
      attribute :uom, Shale::Type::Value

      xml do
        root "unitOfMeasure"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "uom", to: :uom
      end
    end
  end
end
