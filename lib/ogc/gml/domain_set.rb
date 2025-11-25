# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_geometry"
require_relative "abstract_time_object"

module Ogc
  module Gml
    class DomainSet < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_geometry, AbstractGeometry
      attribute :abstract_time_object, AbstractTimeObject

      xml do
        root "rectifiedGridDomain"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractGeometry", to: :abstract_geometry
        map_element "AbstractTimeObject", to: :abstract_time_object
      end
    end
  end
end
