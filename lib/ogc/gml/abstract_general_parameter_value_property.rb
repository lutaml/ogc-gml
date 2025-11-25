# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_general_parameter_value"

module Ogc
  module Gml
    class AbstractGeneralParameterValueProperty < Lutaml::Model::Serializable
      attribute :abstract_general_parameter_value, AbstractGeneralParameterValue

      xml do
        root "includesValue"
        namespace Namespace

        map_element "AbstractGeneralParameterValue", to: :abstract_general_parameter_value
      end
    end
  end
end
