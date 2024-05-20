# frozen_string_literal: true

# --- direction_vector_type.rb ---
require "shale"

require_relative "angle"
require_relative "vector"

module Ogc
  module Gml
    class DirectionVector < Shale::Mapper
      attribute :vector, Vector
      attribute :horizontal_angle, Angle
      attribute :vertical_angle, Angle

      xml do
        root "DirectionVectorType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "vector", to: :vector
        map_element "horizontalAngle", to: :horizontal_angle
        map_element "verticalAngle", to: :vertical_angle
      end
    end
  end
end
