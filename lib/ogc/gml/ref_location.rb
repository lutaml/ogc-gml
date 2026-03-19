# frozen_string_literal: true

require "lutaml/model"

require_relative "affine_placement"

module Ogc
  module Gml
    class RefLocation < Lutaml::Model::Serializable
      attribute :affine_placement, AffinePlacement

      xml do
        element "refLocation"
        namespace Namespace

        map_element "AffinePlacement", to: :affine_placement
      end
    end
  end
end
