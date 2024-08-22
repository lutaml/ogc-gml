# frozen_string_literal: true

require "lutaml/model"

require_relative "user_defined_cs"

module Ogc
  module Gml
    class UserDefinedCSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :user_defined_cs, UserDefinedCS

      xml do
        root "userDefinedCSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "UserDefinedCS", to: :user_defined_cs
      end
    end
  end
end
