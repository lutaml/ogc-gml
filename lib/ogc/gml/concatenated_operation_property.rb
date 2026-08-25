# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ConcatenatedOperationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :concatenated_operation, ConcatenatedOperation

      xml do
        element "concatenatedOperationRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "ConcatenatedOperation", to: :concatenated_operation
      end
    end
  end
end
