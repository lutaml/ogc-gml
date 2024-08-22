# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_surface"
require_relative "polygon"

module Ogc
  module Gml
    class SurfaceProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean #, default: -> { "false" }
      attribute :abstract_surface, AbstractSurface
      attribute :polygon, Polygon

      xml do
        root "extentOf"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractSurface", to: :abstract_surface
        map_element "Polygon", to: :polygon
      end
    end
  end
end
