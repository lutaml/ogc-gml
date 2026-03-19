# frozen_string_literal: true

require "lutaml/model"

require_relative "projected_crs"

module Ogc
  module Gml
    class ProjectedCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :projected_crs, ProjectedCRS

      xml do
        element "projectedCRSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "ProjectedCRS", to: :projected_crs
      end
    end
  end
end
