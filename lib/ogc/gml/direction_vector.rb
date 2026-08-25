# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class DirectionVector < Lutaml::Model::Serializable
      attribute :vector, Vector
      attribute :horizontal_angle, Angle
      attribute :vertical_angle, Angle

      xml do
        element "DirectionVectorType"
        namespace Namespace

        map_element "vector", to: :vector
        map_element "horizontalAngle", to: :horizontal_angle
        map_element "verticalAngle", to: :vertical_angle
      end
    end
  end
end
