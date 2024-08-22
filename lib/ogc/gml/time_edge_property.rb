# frozen_string_literal: true

require "lutaml/model"

require_relative "time_edge"

module Ogc
  module Gml
    class TimeEdgeProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :time_edge, TimeEdge

      xml do
        root "TimeEdgePropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "TimeEdge", to: :time_edge
      end
    end
  end
end
