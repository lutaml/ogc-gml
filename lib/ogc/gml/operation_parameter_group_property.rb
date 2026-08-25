# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class OperationParameterGroupProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :operation_parameter_group, OperationParameterGroup

      xml do
        element "valuesOfGroup"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "OperationParameterGroup", to: :operation_parameter_group
      end
    end
  end
end
