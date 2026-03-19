# frozen_string_literal: true

require "lutaml/model"

require_relative "affine_cs"

module Ogc
  module Gml
    class AffineCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :affine_cs, AffineCS

      xml do
        element "usesAffineCS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AffineCS", to: :affine_cs
      end
    end
  end
end
