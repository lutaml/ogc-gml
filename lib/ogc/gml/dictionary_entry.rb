# frozen_string_literal: true

require "lutaml/model"

require_relative "definition"

module Ogc
  module Gml
    class DictionaryEntry < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :owns, :boolean # , default: -> { "false" }
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :definition, Definition
      attribute :name, :string
      attribute :description, :string

      xml do
        root "dictionaryEntry"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "Definition", to: :definition, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "description", to: :description, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "name", to: :name, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
