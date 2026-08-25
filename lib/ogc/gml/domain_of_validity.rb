# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class DomainOfValidity < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :ex_extent, StringOrRef

      xml do
        element "domainOfValidity"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "EX_Extent", to: :ex_extent
      end
    end
  end
end
