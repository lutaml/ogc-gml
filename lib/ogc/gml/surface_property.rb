# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_surface"
require_relative "polygon"

module Ogc
  module Gml
    class SurfaceProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean # , default: -> { "false" }
      attribute :abstract_surface, AbstractSurface
      attribute :polygon, Polygon

      xml do
        root "extentOf"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "AbstractSurface", to: :abstract_surface
        map_element "Polygon", to: :polygon
      end
    end
  end
end
