# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class StringOrRef < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :nil_reason, :string
      attribute :remote_schema, :string

      xml do
        root "status"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
