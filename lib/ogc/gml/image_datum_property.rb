# frozen_string_literal: true

require "lutaml/model"

require_relative "image_datum"

module Ogc
  module Gml
    class ImageDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
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
