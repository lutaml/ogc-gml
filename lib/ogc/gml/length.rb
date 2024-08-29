# frozen_string_literal: true

require "lutaml/model"

require_relative "measure"
require_relative "unit_of_measure"

module Ogc
  module Gml
    class Length < UnitOfMeasure
      attribute :content, Measure

      xml do
        root "LengthType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "uom", to: :uom
        map_content to: :content
      end
    end
  end
end
