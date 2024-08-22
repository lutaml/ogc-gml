# frozen_string_literal: true

require "lutaml/model"

require_relative "coordinate_system_axis"

module Ogc
  module Gml
    class CoordinateSystemAxisProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :coordinate_system_axis, CoordinateSystemAxis

      xml do
        root "usesAxis"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "CoordinateSystemAxis", to: :coordinate_system_axis
      end
    end
  end
end
