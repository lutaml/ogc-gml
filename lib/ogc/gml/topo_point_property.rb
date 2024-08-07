# frozen_string_literal: true

# --- topo_point_property_type.rb ---
require "shale"

require_relative "topo_point"

module Ogc
  module Gml
    class TopoPointProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
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
