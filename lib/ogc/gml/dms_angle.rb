# frozen_string_literal: true

require "shale"

require_relative "degrees"

module Ogc
  module Gml
    class DMSAngle < Shale::Mapper
      attribute :degrees, Degrees
      attribute :decimal_minutes, Shale::Type::Float
      attribute :minutes, Shale::Type::Integer
      attribute :seconds, Shale::Type::Float

      xml do
        root "dmsAngle"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "degrees", to: :degrees
        map_element "decimalMinutes", to: :decimal_minutes
        map_element "minutes", to: :minutes
        map_element "seconds", to: :seconds
      end
    end
  end
end
