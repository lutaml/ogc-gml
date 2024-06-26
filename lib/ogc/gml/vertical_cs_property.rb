# frozen_string_literal: true

# --- vertical_cs_property_type.rb ---
require "shale"

require_relative "vertical_cs"

module Ogc
  module Gml
    class VerticalCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :vertical_cs, VerticalCS

      xml do
        root "usesVerticalCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "VerticalCS", to: :vertical_cs
      end
    end
  end
end
