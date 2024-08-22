# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_general_operation_parameter"

module Ogc
  module Gml
    class AbstractGeneralOperationParameterProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
