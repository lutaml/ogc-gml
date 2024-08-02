# frozen_string_literal: true

require "shale"

require_relative "topo_curve"

module Ogc
  module Gml
    class TopoCurveProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :topo_curve, TopoCurve

      xml do
        root "topoCurveProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "TopoCurve", to: :topo_curve
      end
    end
  end
end
