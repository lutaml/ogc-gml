# frozen_string_literal: true

require "lutaml/model"

require_relative "time_instant"

module Ogc
  module Gml
    class TimeInstantProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :time_instant, TimeInstant

      xml do
        root "TimeInstantPropertyType"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "TimeInstant", to: :time_instant
      end
    end
  end
end
