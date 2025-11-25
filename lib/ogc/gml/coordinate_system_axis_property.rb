# frozen_string_literal: true

require "lutaml/model"

require_relative "coordinate_system_axis"

module Ogc
  module Gml
    class CoordinateSystemAxisProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :coordinate_system_axis, CoordinateSystemAxis

      xml do
        root "usesAxis"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "CoordinateSystemAxis", to: :coordinate_system_axis
      end
    end
  end
end
