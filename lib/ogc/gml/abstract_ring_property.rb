# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractRingProperty < Lutaml::Model::Serializable
      attribute :abstract_ring, AbstractRing

      xml do
        element "interior"
        namespace Namespace

        map_element "AbstractRing", to: :abstract_ring
      end
    end
  end
end
