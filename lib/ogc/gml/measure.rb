# frozen_string_literal: true

# --- measure_type.rb ---
require "shale"
require_relative "numeric_type"

module Ogc
  module Gml
    class Measure < Shale::Mapper
      attribute :content, NumericType
      attribute :uom, Shale::Type::String

      xml do
        root "value"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "uom", to: :uom
      end
    end
  end
end
