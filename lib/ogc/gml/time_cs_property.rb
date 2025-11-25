# frozen_string_literal: true

require "lutaml/model"

require_relative "time_cs"

module Ogc
  module Gml
    class TimeCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :time_cs, TimeCS

      xml do
        root "usesTimeCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "TimeCS", to: :time_cs
      end
    end
  end
end
