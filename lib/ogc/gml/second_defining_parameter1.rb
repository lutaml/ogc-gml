# frozen_string_literal: true

require "lutaml/model"

require_relative "second_defining_parameter2"

module Ogc
  module Gml
    class SecondDefiningParameter1 < Lutaml::Model::Serializable
      attribute :second_defining_parameter, SecondDefiningParameter2

      xml do
        element "secondDefiningParameter"
        namespace Namespace

        map_element "SecondDefiningParameter", to: :second_defining_parameter
      end
    end
  end
end
