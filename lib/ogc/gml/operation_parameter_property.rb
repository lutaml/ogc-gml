# frozen_string_literal: true

require "lutaml/model"

require_relative "operation_parameter"

module Ogc
  module Gml
    class OperationParameterProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
