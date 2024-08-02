# frozen_string_literal: true

require "shale"

require_relative "user_defined_cs"

module Ogc
  module Gml
    # Represents a user-defined coordinate system property.
    class UserDefinedCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
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
