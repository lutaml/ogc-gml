# frozen_string_literal: true

require "lutaml/model"

require_relative "conversion"

module Ogc
  module Gml
    class ConversionProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :conversion, Conversion

      xml do
        root "conversionRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "Conversion", to: :conversion
      end
    end
  end
end
