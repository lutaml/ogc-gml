# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "reference"

module Ogc
  module Gml
    class DirectionDescription < Lutaml::Model::Serializable
      attribute :compass_point, :string
      attribute :keyword, Code
      attribute :description, :string
      attribute :reference, Reference

      xml do
        root "DirectionDescriptionType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "compassPoint", to: :compass_point
        map_element "keyword", to: :keyword
        map_element "description", to: :description
        map_element "reference", to: :reference
      end
    end
  end
end
