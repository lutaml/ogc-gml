# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GridLimits < Lutaml::Model::Serializable
      attribute :grid_envelope, GridEnvelope

      xml do
        element "GridLimitsType"
        namespace Namespace

        map_element "GridEnvelope", to: :grid_envelope
      end
    end
  end
end
