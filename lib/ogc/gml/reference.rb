# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class RemoteSchema < Lutaml::Model::Type::String
      xml do
        namespace Namespace
      end
    end

    class Reference < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema

      xml do
        element "statusReference"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
      end
    end
  end
end
