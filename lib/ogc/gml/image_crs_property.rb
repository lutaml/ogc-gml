# frozen_string_literal: true

require "shale"

require_relative "image_crs"

module Ogc
  module Gml
    class ImageCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :image_crs, ImageCRS

      xml do
        root "imageCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "ImageCRS", to: :image_crs
      end
    end
  end
end
