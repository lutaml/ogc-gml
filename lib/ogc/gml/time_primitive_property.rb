# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_time_primitive"

module Ogc
  module Gml
    class TimePrimitiveProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_time_primitive, AbstractTimePrimitive

      xml do
        root "validTime"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "AbstractTimePrimitive", to: :abstract_time_primitive
      end
    end
  end
end
