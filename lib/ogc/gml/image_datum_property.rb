# frozen_string_literal: true

require "shale"

require_relative "image_datum"

module Ogc
  module Gml
    class ImageDatumProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :image_datum, ImageDatum

      xml do
        root "usesImageDatum"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "ImageDatum", to: :image_datum
      end
    end
  end
end
