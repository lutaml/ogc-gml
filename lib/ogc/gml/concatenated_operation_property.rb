# frozen_string_literal: true

require "lutaml/model"

require_relative "concatenated_operation"

module Ogc
  module Gml
    class ConcatenatedOperationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :concatenated_operation, ConcatenatedOperation

      xml do
        root "concatenatedOperationRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "ConcatenatedOperation", to: :concatenated_operation
      end
    end
  end
end
