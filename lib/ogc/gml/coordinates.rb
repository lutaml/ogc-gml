# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Coordinates < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :decimal, :string, default: -> { "." }
      attribute :cs, :string, default: -> { "," }
      attribute :ts, :string, default: -> { " " }

      xml do
        root "coordinates"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "decimal", to: :decimal
        map_attribute "cs", to: :cs
        map_attribute "ts", to: :ts
      end
    end
  end
end
