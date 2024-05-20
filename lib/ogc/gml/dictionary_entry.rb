# frozen_string_literal: true

# --- dictionary_entry_type.rb ---
require "shale"

require_relative "definition"

module Ogc
  module Gml
    class DictionaryEntry < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :definition, Definition

      xml do
        root "definitionMember"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "Definition", to: :definition
      end
    end
  end
end
