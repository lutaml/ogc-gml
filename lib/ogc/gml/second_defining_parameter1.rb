# frozen_string_literal: true

require "shale"

require_relative "second_defining_parameter2"

module Ogc
  module Gml
    class SecondDefiningParameter1 < Shale::Mapper
      attribute :second_defining_parameter, SecondDefiningParameter2

      xml do
        root "secondDefiningParameter"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "SecondDefiningParameter", to: :second_defining_parameter
      end
    end
  end
end
