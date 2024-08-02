# frozen_string_literal: true

require "shale"

require_relative "topo_volume"

module Ogc
  module Gml
    # Represents a topo volume property.
    class TopoVolumeProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :topo_volume, TopoVolume

      xml do
        root "topoVolumeProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "TopoVolume", to: :topo_volume
      end
    end
  end
end
