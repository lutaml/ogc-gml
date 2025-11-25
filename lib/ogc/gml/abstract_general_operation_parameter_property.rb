# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_general_operation_parameter"

module Ogc
  module Gml

    class RemoteSchema < Lutaml::Model::Type::String
      xml_namespace Namespace
    end

    class AbstractGeneralOperationParameterProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_general_operation_parameter, AbstractGeneralOperationParameter

      xml do
        root "generalOperationParameter"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractGeneralOperationParameter", to: :abstract_general_operation_parameter
      end
    end
  end
end
