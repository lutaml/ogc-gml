# frozen_string_literal: true

require "lutaml/model"

require_relative "user_defined_cs"

module Ogc
  module Gml
    class UserDefinedCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :user_defined_cs, UserDefinedCS

      xml do
        root "userDefinedCSRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "UserDefinedCS", to: :user_defined_cs
      end
    end
  end
end
