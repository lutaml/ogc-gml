# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_coordinate_operation"

module Ogc
  module Gml
    class CoordinateOperationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :abstract_coordinate_operation, AbstractCoordinateOperation

      xml do
        root "usesOperation"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractCoordinateOperation", to: :abstract_coordinate_operation
      end
    end
  end
end
