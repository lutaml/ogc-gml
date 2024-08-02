# frozen_string_literal: true

require "shale"

require_relative "vertical_datum"

module Ogc
  module Gml
    # Represents a vertical datum property.
    class VerticalDatumProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :vertical_datum, VerticalDatum

      xml do
        root "usesVerticalDatum"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "VerticalDatum", to: :vertical_datum
      end
    end
  end
end
