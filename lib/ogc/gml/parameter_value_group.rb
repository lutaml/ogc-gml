# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ParameterValueGroup < Lutaml::Model::Serializable
      attribute :parameter_value, AbstractGeneralParameterValueProperty,
                collection: true
      attribute :group, Reference

      xml do
        element "ParameterValueGroup"
        namespace Namespace

        map_element "parameterValue", to: :parameter_value
        map_element "group", to: :group
      end
    end
  end
end
