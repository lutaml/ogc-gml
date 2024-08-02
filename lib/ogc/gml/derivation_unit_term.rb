# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class DerivationUnitTerm < Shale::Mapper
      attribute :uom, Shale::Type::Value
      attribute :exponent, Shale::Type::Integer

      xml do
        root "derivationUnitTerm"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "uom", to: :uom
        map_attribute "exponent", to: :exponent
      end
    end
  end
end
