# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_general_conversion"

module Ogc
  module Gml
    class GeneralConversionProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :abstract_general_conversion, AbstractGeneralConversion

      xml do
        root "definedByConversion"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractGeneralConversion", to: :abstract_general_conversion
      end
    end
  end
end
