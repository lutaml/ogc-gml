# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class CoordinateOperationAccuracy < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :reference_event, StringOrRef

      xml do
        element "coordinateOperationAccuracy"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "referenceEvent", to: :reference_event
      end
    end
  end
end
