# frozen_string_literal: true

require "shale"

require_relative "abstract_coordinate_operation"

module Ogc
  module Gml
    class SingleOperationProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
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
