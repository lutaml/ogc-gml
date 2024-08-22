# frozen_string_literal: true

require "lutaml/model"

require_relative "topo_point"

module Ogc
  module Gml
    class TopoPointProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
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
