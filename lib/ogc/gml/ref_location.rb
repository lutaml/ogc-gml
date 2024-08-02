# frozen_string_literal: true

require "shale"

require_relative "affine_placement"

module Ogc
  module Gml
    class RefLocation < Shale::Mapper
      attribute :affine_placement, AffinePlacement

      xml do
        root "refLocation"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AffinePlacement", to: :affine_placement
      end
    end
  end
end
