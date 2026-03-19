# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_solid"

module Ogc
  module Gml
    class SolidArrayProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_solid, AbstractSolid, collection: true

      xml do
        element "solidArrayProperty"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "AbstractSolid", to: :abstract_solid
      end
    end
  end
end
