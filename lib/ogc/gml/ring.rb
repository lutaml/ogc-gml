# frozen_string_literal: true

require "lutaml/model"
require_relative "composite_curve"

module Ogc
  module Gml
    class Ring < CompositeCurve
      attribute :aggregation_type, :string

      xml do
        element "Ring"
        namespace Namespace

        map_attribute "aggregationType", to: :aggregation_type
        map_element "curveMember", to: :curve_member
      end
    end
  end
end
