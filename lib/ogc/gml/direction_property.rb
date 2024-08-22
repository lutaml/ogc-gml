# frozen_string_literal: true

require "shale"

require_relative "code"
require_relative "direction_description"
require_relative "direction_vector"
require_relative "string_or_ref"

module Ogc
  module Gml
    class DirectionProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :direction_vector, DirectionVector
      attribute :direction_description, DirectionDescription
      attribute :compass_point, Shale::Type::String
      attribute :direction_keyword, Code
      attribute :direction_string, StringOrRef

      xml do
        root "direction"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "DirectionVector", to: :direction_vector
        map_element "DirectionDescription", to: :direction_description
        map_element "CompassPoint", to: :compass_point
        map_element "DirectionKeyword", to: :direction_keyword
        map_element "DirectionString", to: :direction_string
      end
    end
  end
end
