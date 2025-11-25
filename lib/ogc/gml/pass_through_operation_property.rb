# frozen_string_literal: true

require "lutaml/model"

require_relative "pass_through_operation"

module Ogc
  module Gml
    class PassThroughOperationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :pass_through_operation, PassThroughOperation

      xml do
        root "passThroughOperationRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "PassThroughOperation", to: :pass_through_operation
      end
    end
  end
end
