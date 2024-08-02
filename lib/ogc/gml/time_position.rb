# frozen_string_literal: true

require "shale"

module Ogc
  module Gml
    class TimePosition < Shale::Mapper
      attribute :content, Shale::Type::Value
      attribute :frame, Shale::Type::Value, default: -> { "#ISO-8601" }
      attribute :calendar_era_name, Shale::Type::String
      attribute :indeterminate_position, Shale::Type::String

      xml do
        root "timePosition"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "frame", to: :frame
        map_attribute "calendarEraName", to: :calendar_era_name
        map_attribute "indeterminatePosition", to: :indeterminate_position
      end
    end
  end
end
