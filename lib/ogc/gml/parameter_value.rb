# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ParameterValue < Lutaml::Model::Serializable
      attribute :value, Measure
      attribute :dms_angle_value, DMSAngle
      attribute :string_value, :string
      attribute :integer_value, :integer
      attribute :boolean_value, :boolean
      attribute :value_list, MeasureList
      attribute :integer_value_list, :string
      attribute :value_file, :string
      attribute :operation_parameter, OperationParameterProperty

      xml do
        element "ParameterValue"
        namespace Namespace

        map_element "value", to: :value
        map_element "dmsAngleValue", to: :dms_angle_value
        map_element "stringValue", to: :string_value
        map_element "integerValue", to: :integer_value
        map_element "booleanValue", to: :boolean_value
        map_element "valueList", to: :value_list
        map_element "integerValueList", to: :integer_value_list
        map_element "valueFile", to: :value_file
        map_element "operationParameter", to: :operation_parameter
      end
    end
  end
end
