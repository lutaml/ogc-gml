# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Degrees < Lutaml::Model::Serializable
      attribute :content, :integer
      attribute :direction, :string

      xml do
        root "degrees"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "direction", to: :direction
      end
    end
  end
end
