# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ControlPoint < Lutaml::Model::Serializable
      attribute :pos_list, DirectPositionList
      attribute :pos, DirectPosition, collection: true
      attribute :point_property, PointProperty, collection: true

      xml do
        element "controlPoint"
        namespace Namespace

        map_element "posList", to: :pos_list
        map_element "pos", to: :pos
        map_element "pointProperty", to: :point_property
      end
    end
  end
end
