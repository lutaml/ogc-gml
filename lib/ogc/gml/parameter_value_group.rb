# frozen_string_literal: true

require "shale"

require_relative "abstract_general_parameter_value_property"
require_relative "reference"

module Ogc
  module Gml
    class ParameterValueGroup < Shale::Mapper
      attribute :parameter_value, AbstractGeneralParameterValueProperty, collection: true
      attribute :group, Reference

      xml do
        root "ParameterValueGroup"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "parameterValue", to: :parameter_value
        map_element "group", to: :group
      end
    end
  end
end
