# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class VerticalCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :vertical_crs, VerticalCRS

      xml do
        element "verticalCRSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "VerticalCRS", to: :vertical_crs
      end
    end
  end
end
