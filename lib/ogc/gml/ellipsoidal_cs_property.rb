# frozen_string_literal: true

require "shale"

require_relative "ellipsoidal_cs"

module Ogc
  module Gml
    class EllipsoidalCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :ellipsoidal_cs, EllipsoidalCS

      xml do
        root "usesEllipsoidalCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "EllipsoidalCS", to: :ellipsoidal_cs
      end
    end
  end
end
