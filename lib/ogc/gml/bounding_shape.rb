# frozen_string_literal: true

require "lutaml/model"

require_relative "envelope"

module Ogc
  module Gml
    class BoundingShape < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :envelope, Envelope
      attribute :null, :string

      xml do
        root "boundedBy"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_element "Envelope", to: :envelope
        map_element "Null", to: :null
      end
    end
  end
end
