# frozen_string_literal: true

require "lutaml/model"

require_relative "multi_surface"

module Ogc
  module Gml
    class MultiSurfaceProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :multi_surface, MultiSurface

      xml do
        root "multiSurfaceProperty"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "MultiSurface", to: :multi_surface
      end
    end
  end
end
