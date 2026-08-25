# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TopoPointProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :topo_point, TopoPoint

      xml do
        element "topoPointProperty"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "TopoPoint", to: :topo_point
      end
    end
  end
end
