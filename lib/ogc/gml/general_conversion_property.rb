# frozen_string_literal: true

require "shale"

require_relative "abstract_general_conversion"

module Ogc
  module Gml
    class GeneralConversionProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
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
