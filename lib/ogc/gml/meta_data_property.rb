# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class MetaDataProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :about, :string
      attribute :abstract_meta_data, AbstractMetaData

      xml do
        element "metaDataProperty"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "about", to: :about
        map_element "AbstractMetaData", to: :abstract_meta_data
      end
    end
  end
end
