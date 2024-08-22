# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class InlineProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }

      xml do
        root "abstractInlineProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
      end
    end
  end
end
