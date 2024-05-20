# frozen_string_literal: true

# --- prime_meridian_property_type.rb ---
require "shale"

require_relative "prime_meridian"

module Ogc
  module Gml
    class PrimeMeridianProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :prime_meridian, PrimeMeridian

      xml do
        root "primeMeridianRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "PrimeMeridian", to: :prime_meridian
      end
    end
  end
end
