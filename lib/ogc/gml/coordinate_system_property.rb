# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_coordinate_system"

module Ogc
  module Gml
    class CoordinateSystemProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :abstract_coordinate_system, AbstractCoordinateSystem

      xml do
        root "usesCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractCoordinateSystem", to: :abstract_coordinate_system
      end
    end
  end
end
