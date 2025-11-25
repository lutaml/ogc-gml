# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractGeneralParameterValue < Lutaml::Model::Serializable
      xml do
        root "AbstractGeneralParameterValue"
        namespace Namespace
      end
    end
  end
end
