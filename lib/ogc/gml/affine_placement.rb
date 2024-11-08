# frozen_string_literal: true

require "lutaml/model"

require_relative "direct_position"
require_relative "vector"

module Ogc
  module Gml
    class AffinePlacement < Lutaml::Model::Serializable
      attribute :location, DirectPosition
      attribute :ref_direction, Vector, collection: true
      attribute :in_dimension, :integer
      attribute :out_dimension, :integer

      xml do
        root "AffinePlacement"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "location", to: :location
        map_element "refDirection", to: :ref_direction
        map_element "inDimension", to: :in_dimension
        map_element "outDimension", to: :out_dimension
      end
    end
  end
end
