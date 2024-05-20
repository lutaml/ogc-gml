# frozen_string_literal: true

# --- cylindrical_cs_property_type.rb ---
require "shale"

require_relative "cylindrical_cs"

module Ogc
  module Gml
    class CylindricalCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :cylindrical_cs, CylindricalCS

      xml do
        root "cylindricalCSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "CylindricalCS", to: :cylindrical_cs
      end
    end
  end
end
