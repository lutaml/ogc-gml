# frozen_string_literal: true

# --- indirect_entry_type.rb ---
require "shale"

require_relative "definition_proxy"

module Ogc
  module Gml
    class IndirectEntry < Shale::Mapper
      attribute :definition_proxy, DefinitionProxy

      xml do
        root "indirectEntry"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "DefinitionProxy", to: :definition_proxy
      end
    end
  end
end
