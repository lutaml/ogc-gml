# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GridEnvelope < Lutaml::Model::Serializable
      attribute :low, :string
      attribute :high, :string

      xml do
        root "GridEnvelopeType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "low", to: :low
        map_element "high", to: :high
      end
    end
  end
end
