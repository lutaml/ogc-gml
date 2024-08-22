# frozen_string_literal: true

require "lutaml/model"

require_relative "topo_volume"

module Ogc
  module Gml
    class TopoVolumeProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
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
