# frozen_string_literal: true

# --- single_crs_property_type.rb ---
require "shale"

require_relative "abstract_crs"

module Ogc
  module Gml
    class SingleCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_single_crs, AbstractCRS

      xml do
        root "includesSingleCRS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractSingleCRS", to: :abstract_single_crs
      end
    end
  end
end
