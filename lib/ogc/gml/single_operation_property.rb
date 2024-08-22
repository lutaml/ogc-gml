# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_coordinate_operation"

module Ogc
  module Gml
    class SingleOperationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :abstract_single_operation, AbstractCoordinateOperation

      xml do
        root "singleOperationRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractSingleOperation", to: :abstract_single_operation
      end
    end
  end
end
