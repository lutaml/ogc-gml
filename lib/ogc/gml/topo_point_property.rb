# frozen_string_literal: true

require "shale"

require_relative "topo_point"

module Ogc
  module Gml
    class TopoPointProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean
      attribute :topo_point, TopoPoint

      xml do
        root "topoPointProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "TopoPoint", to: :topo_point
      end
    end
  end
end
