# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TopoCurveProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :topo_curve, TopoCurve

      xml do
        element "topoCurveProperty"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "TopoCurve", to: :topo_curve
      end
    end
  end
end
