# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_solid"

module Ogc
  module Gml
    class SolidProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_solid, AbstractSolid

      xml do
        root "solidMember"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "AbstractSolid", to: :abstract_solid
      end
    end
  end
end
