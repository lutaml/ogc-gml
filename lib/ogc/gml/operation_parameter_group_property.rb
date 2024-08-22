# frozen_string_literal: true

require "lutaml/model"

require_relative "operation_parameter_group"

module Ogc
  module Gml
    class OperationParameterGroupProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :operation_parameter_group, OperationParameterGroup

      xml do
        root "valuesOfGroup"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "OperationParameterGroup", to: :operation_parameter_group
      end
    end
  end
end
