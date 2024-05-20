# frozen_string_literal: true

# --- crs_property_type.rb ---
require "shale"

require_relative "abstract_crs"

module Ogc
  module Gml
    class CRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_crs, AbstractCRS

      xml do
        root "crsRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractCRS", to: :abstract_crs
      end
    end
  end
end
