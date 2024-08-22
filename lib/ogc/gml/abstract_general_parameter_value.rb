# frozen_string_literal: true

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
