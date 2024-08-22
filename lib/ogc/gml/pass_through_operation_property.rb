# frozen_string_literal: true

require "shale"

require_relative "pass_through_operation"

module Ogc
  module Gml
    class PassThroughOperationProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :pass_through_operation, PassThroughOperation

      xml do
        root "passThroughOperationRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "PassThroughOperation", to: :pass_through_operation
      end
    end
  end
end
