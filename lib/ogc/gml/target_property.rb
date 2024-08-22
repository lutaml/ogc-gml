# frozen_string_literal: true

require "shale"

require_relative "abstract_feature"
require_relative "abstract_geometry"

module Ogc
  module Gml
    class TargetProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_feature, AbstractFeature
      attribute :abstract_geometry, AbstractGeometry

      xml do
        root "subject"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractFeature", to: :abstract_feature
        map_element "AbstractGeometry", to: :abstract_geometry
      end
    end
  end
end
