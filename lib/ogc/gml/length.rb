# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Length < UnitOfMeasure
      attribute :content, Measure

      xml do
        element "LengthType"
        namespace Namespace

        map_attribute "uom", to: :uom
        map_content to: :content
      end
    end
  end
end
