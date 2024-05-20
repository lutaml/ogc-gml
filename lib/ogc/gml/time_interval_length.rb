# frozen_string_literal: true

# --- time_interval_length_type.rb ---
require "shale"

module Ogc
  module Gml
    class TimeIntervalLength < Shale::Mapper
      attribute :content, Shale::Type::Float
      attribute :unit, Shale::Type::String
      attribute :radix, Shale::Type::Integer
      attribute :factor, Shale::Type::Integer

      xml do
        root "timeInterval"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "unit", to: :unit
        map_attribute "radix", to: :radix
        map_attribute "factor", to: :factor
      end
    end
  end
end
