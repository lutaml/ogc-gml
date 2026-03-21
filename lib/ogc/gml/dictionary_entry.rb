# frozen_string_literal: true

require "lutaml/model"

require_relative "definition"
require_relative "identifier"

module Ogc
  module Gml
    class DictionaryEntry < Lutaml::Model::Serializable
      attribute :id, Identifier
      attribute :owns, :boolean # , default: -> { "false" }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :definition, Definition
      attribute :name, :string
      attribute :description, :string

      xml do
        element "dictionaryEntry"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "Definition", to: :definition
        map_element "description", to: :description
        map_element "name", to: :name
      end
    end
  end
end
