# frozen_string_literal: true

require "shale"

require_relative "envelope"

module Ogc
  module Gml
    class BoundingShape < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :envelope, Envelope
      attribute :null, Shale::Type::Value

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
