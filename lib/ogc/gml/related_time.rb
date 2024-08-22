# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_time_primitive"

module Ogc
  module Gml
    class RelatedTime < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :relative_position, :string
      attribute :abstract_time_primitive, AbstractTimePrimitive

      xml do
        root "RelatedTimeType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_attribute "relativePosition", to: :relative_position
        map_element "AbstractTimePrimitive", to: :abstract_time_primitive
      end
    end
  end
end
