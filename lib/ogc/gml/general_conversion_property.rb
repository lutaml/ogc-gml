# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GeneralConversionProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_general_conversion, AbstractGeneralConversion

      xml do
        element "definedByConversion"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractGeneralConversion",
                    to: :abstract_general_conversion
      end
    end
  end
end
