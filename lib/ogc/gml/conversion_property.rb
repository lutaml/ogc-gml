# frozen_string_literal: true

# --- conversion_property_type.rb ---
require "shale"

require_relative "conversion"

module Ogc
  module Gml
    class ConversionProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :conversion, Conversion

      xml do
        root "conversionRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "Conversion", to: :conversion
      end
    end
  end
end
