# frozen_string_literal: true

# --- vector_type.rb ---
require "shale"

require_relative "direct_position"

module Ogc
  module Gml
    class Vector < Shale::Mapper
      attribute :content, DirectPosition

      xml do
        root "vector"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
      end
    end
  end
end
