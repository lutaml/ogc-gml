# frozen_string_literal: true

require "shale"

require_relative "operation_method"

module Ogc
  module Gml
    class OperationMethodProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :operation_method, OperationMethod

      xml do
        root "operationMethodRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "OperationMethod", to: :operation_method
      end
    end
  end
end
