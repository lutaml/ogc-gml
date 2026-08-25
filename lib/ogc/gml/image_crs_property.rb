# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ImageCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :image_crs, ImageCRS

      xml do
        element "imageCRSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "ImageCRS", to: :image_crs
      end
    end
  end
end
