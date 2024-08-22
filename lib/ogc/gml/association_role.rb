# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AssociationRole < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }

      xml do
        root "member"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
