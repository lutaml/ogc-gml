# frozen_string_literal: true

require "lutaml/model"

require_relative "measure"

module Ogc
  module Gml
    class Length < Lutaml::Model::Serializable
      attribute :content, Measure

      xml do
        root "LengthType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
      end
    end
  end
end
