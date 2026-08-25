# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ConversionProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :conversion, Conversion

      xml do
        element "conversionRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "Conversion", to: :conversion
      end
    end
  end
end
