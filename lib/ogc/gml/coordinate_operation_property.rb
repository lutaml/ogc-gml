# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_coordinate_operation"

module Ogc
  module Gml
    class CoordinateOperationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_coordinate_operation, AbstractCoordinateOperation

      xml do
        element "usesOperation"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractCoordinateOperation",
                    to: :abstract_coordinate_operation
      end
    end
  end
end
