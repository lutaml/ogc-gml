# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TopoVolumeProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :topo_volume, TopoVolume

      xml do
        element "topoVolumeProperty"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "TopoVolume", to: :topo_volume
      end
    end
  end
end
