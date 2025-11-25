# frozen_string_literal: true

require "lutaml/model"

require_relative "vertical_cs"

module Ogc
  module Gml
    class VerticalCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :vertical_cs, VerticalCS

      xml do
        root "usesVerticalCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "VerticalCS", to: :vertical_cs
      end
    end
  end
end
