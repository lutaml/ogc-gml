# frozen_string_literal: true

# --- domain_of_validity.rb ---
require "shale"

require_relative "string_or_ref"

module Ogc
  module Gml
    class DomainOfValidity < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
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
