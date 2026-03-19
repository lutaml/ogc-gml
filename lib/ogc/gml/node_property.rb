# frozen_string_literal: true

require "lutaml/model"

require_relative "node"

module Ogc
  module Gml
    class NodeProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :node, Node

      xml do
        element "NodePropertyType"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "Node", to: :node
      end
    end
  end
end
