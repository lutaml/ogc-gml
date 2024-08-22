# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GenericMetaData < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string

      xml do
        root "GenericMetaData"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
