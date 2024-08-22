# frozen_string_literal: true

require "shale"

require_relative "affine_cs"

module Ogc
  module Gml
    class AffineCSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :affine_cs, AffineCS

      xml do
        root "usesAffineCS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AffineCS", to: :affine_cs
      end
    end
  end
end
