# frozen_string_literal: true

require "lutaml/model"

require_relative "definition_proxy"

module Ogc
  module Gml
    class IndirectEntry < Lutaml::Model::Serializable
      attribute :definition_proxy, DefinitionProxy

      xml do
        element "indirectEntry"
        namespace Namespace

        map_element "DefinitionProxy", to: :definition_proxy
      end
    end
  end
end
