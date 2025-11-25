# frozen_string_literal: true

require "lutaml/model"

require_relative "operation_method"

module Ogc
  module Gml
    class OperationMethodProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :operation_method, OperationMethod

      xml do
        root "operationMethodRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "OperationMethod", to: :operation_method
      end
    end
  end
end
