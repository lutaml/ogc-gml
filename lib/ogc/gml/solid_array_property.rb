# frozen_string_literal: true

require "shale"

require_relative "abstract_solid"

module Ogc
  module Gml
    class SolidArrayProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_solid, AbstractSolid, collection: true

      xml do
        root "solidArrayProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractSolid", to: :abstract_solid
      end
    end
  end
end
