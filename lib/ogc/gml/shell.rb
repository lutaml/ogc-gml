# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Shell < Lutaml::Model::Serializable
      attribute :aggregation_type, :string
      attribute :surface_member, SurfaceProperty, collection: true

      xml do
        element "Shell"
        namespace Namespace

        map_attribute "aggregationType", to: :aggregation_type
        map_element "surfaceMember", to: :surface_member
      end
    end
  end
end
