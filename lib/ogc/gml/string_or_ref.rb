# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class StringOrRef < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema

      xml do
        element "status"
        namespace Namespace

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
      end
    end
  end
end
