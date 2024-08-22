# frozen_string_literal: true

require "shale"

require_relative "abstract_general_operation_parameter"

module Ogc
  module Gml
    class AbstractGeneralOperationParameterProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_general_operation_parameter, AbstractGeneralOperationParameter

      xml do
        root "generalOperationParameter"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractGeneralOperationParameter", to: :abstract_general_operation_parameter
      end
    end
  end
end
