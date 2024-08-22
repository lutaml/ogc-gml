# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class ArrayAssociation < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_object, Shale::Type::Value, collection: true

      xml do
        root "members"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractObject", to: :abstract_object
      end
    end
  end
end
