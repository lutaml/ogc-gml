# frozen_string_literal: true

# --- linear_cs_property_type.rb ---
require "shale"

require_relative "linear_cs"

module Ogc
  module Gml
    class LinearCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :linear_cs, LinearCS

      xml do
        root "linearCSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "LinearCS", to: :linear_cs
      end
    end
  end
end
