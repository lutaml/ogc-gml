# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Measure < Lutaml::Model::Serializable
      attribute :content, :float
      attribute :uom, :string

      xml do
        root "value"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "uom", to: :uom
      end
    end
  end
end
