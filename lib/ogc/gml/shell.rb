# frozen_string_literal: true

require "lutaml/model"
require_relative "surface_property"

module Ogc
  module Gml
    class SurfaceProperty < Lutaml::Model::Serializable
    end

    class Shell < Lutaml::Model::Serializable
      attribute :aggregation_type, :string
      attribute :surface_member, SurfaceProperty, collection: true

      xml do
        root "Shell"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "aggregationType", to: :aggregation_type
        map_element "surfaceMember", to: :surface_member
      end
    end
  end
end
