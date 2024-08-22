# frozen_string_literal: true

require "lutaml/model"

require_relative "point"

module Ogc
  module Gml
    class PointProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean # , default: -> { "false" }
      attribute :point, Point

      xml do
        root "position"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "Point", to: :point
      end
    end
  end
end
