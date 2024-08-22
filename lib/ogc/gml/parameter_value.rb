# frozen_string_literal: true

require "shale"

require_relative "dms_angle"
require_relative "measure_list"
require_relative "measure"
require_relative "operation_parameter_property"

module Ogc
  module Gml
    class ParameterValue < Shale::Mapper
      attribute :value, Measure
      attribute :dms_angle_value, DMSAngle
      attribute :string_value, Shale::Type::String
      attribute :integer_value, Shale::Type::Integer
      attribute :boolean_value, Shale::Type::Boolean
      attribute :value_list, MeasureList
      attribute :integer_value_list, Shale::Type::Value
      attribute :value_file, Shale::Type::Value
      attribute :operation_parameter, OperationParameterProperty

      xml do
        root "ParameterValue"
        namespace "http://www.opengis.net/gml/3.2", "gml"

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
