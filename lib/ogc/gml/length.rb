# frozen_string_literal: true

# --- length_type.rb ---
require "shale"

require_relative "measure"

module Ogc
  module Gml
    class Length < Shale::Mapper
      attribute :content, Measure

      xml do
        root "LengthType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
      end
    end
  end
end
