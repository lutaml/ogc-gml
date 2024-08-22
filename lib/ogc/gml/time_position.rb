# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimePosition < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :frame, :string, default: -> { "#ISO-8601" }
      attribute :calendar_era_name, :string
      attribute :indeterminate_position, :string

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
