# frozen_string_literal: true

require "lutaml/model"

require_relative "topo_curve"

module Ogc
  module Gml
    class TopoCurveProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
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
