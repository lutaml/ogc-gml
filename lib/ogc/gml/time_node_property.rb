# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeNodeProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :time_node, TimeNode

      xml do
        element "TimeNodePropertyType"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "TimeNode", to: :time_node
      end
    end
  end
end
