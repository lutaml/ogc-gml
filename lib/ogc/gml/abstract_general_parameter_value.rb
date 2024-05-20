# frozen_string_literal: true

# --- abstract_general_parameter_value_type.rb ---
require "shale"

module Ogc
  module Gml
    class AbstractGeneralParameterValue < Shale::Mapper
      xml do
        root "AbstractGeneralParameterValue"
        namespace "http://www.opengis.net/gml/3.2", "gml"
      end
    end
  end
end
