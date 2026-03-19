# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_coordinate_system"

module Ogc
  module Gml
    class CoordinateSystemProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_coordinate_system, AbstractCoordinateSystem

      xml do
        element "usesCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractCoordinateSystem", to: :abstract_coordinate_system
      end
    end
  end
end
