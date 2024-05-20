# frozen_string_literal: true

# --- inline_property_type.rb ---
require "shale"

module Ogc
  module Gml
    class InlineProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }

      xml do
        root "abstractInlineProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
      end
    end
  end
end
