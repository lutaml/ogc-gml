# frozen_string_literal: true

# --- abstract_general_parameter_value_property_type.rb ---
require "shale"

require_relative "abstract_general_parameter_value"

module Ogc
  module Gml
    class AbstractGeneralParameterValueProperty < Shale::Mapper
      attribute :abstract_general_parameter_value, AbstractGeneralParameterValue

      xml do
        root "includesValue"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AbstractGeneralParameterValue", to: :abstract_general_parameter_value
      end
    end
  end
end
