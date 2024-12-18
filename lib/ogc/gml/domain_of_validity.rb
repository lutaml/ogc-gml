# frozen_string_literal: true

require "lutaml/model"

require_relative "string_or_ref"

module Ogc
  module Gml
    class DomainOfValidity < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :ex_extent, StringOrRef

      xml do
        root "domainOfValidity"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "EX_Extent", to: :ex_extent
      end
    end
  end
end
