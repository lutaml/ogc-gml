# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractCurveSegment < Lutaml::Model::Serializable
      attribute :num_derivatives_at_start, :integer # , default: -> { "0" }
      attribute :num_derivatives_at_end, :integer # , default: -> { "0" }
      attribute :num_derivative_interior, :integer # , default: -> { "0" }

      xml do
        root "AbstractCurveSegment"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "numDerivativesAtStart", to: :num_derivatives_at_start
        map_attribute "numDerivativesAtEnd", to: :num_derivatives_at_end
        map_attribute "numDerivativeInterior", to: :num_derivative_interior
      end
    end
  end
end
