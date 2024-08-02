# frozen_string_literal: true

require "shale"

require_relative "operation_parameter"

module Ogc
  module Gml
    class OperationParameterProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :operation_parameter, OperationParameter

      xml do
        root "operationParameterGroupRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "OperationParameter", to: :operation_parameter
      end
    end
  end
end
