# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_meta_data"

module Ogc
  module Gml
    class MetaDataProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :about, :string
      attribute :abstract_meta_data, AbstractMetaData

      xml do
        root "metaDataProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "about", to: :about
        map_element "AbstractMetaData", to: :abstract_meta_data
      end
    end
  end
end
