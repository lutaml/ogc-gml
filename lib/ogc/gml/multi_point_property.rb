# frozen_string_literal: true

require "lutaml/model"

require_relative "multi_point"

module Ogc
  module Gml
    class MultiPointProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :multi_point, MultiPoint

      xml do
        root "multiPointProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "MultiPoint", to: :multi_point
      end
    end
  end
end
