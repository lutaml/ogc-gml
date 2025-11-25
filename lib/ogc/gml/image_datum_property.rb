# frozen_string_literal: true

require "lutaml/model"

require_relative "image_datum"

module Ogc
  module Gml
    class ImageDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :image_datum, ImageDatum

      xml do
        root "usesImageDatum"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "ImageDatum", to: :image_datum
      end
    end
  end
end
