# frozen_string_literal: true

# --- transformation_property_type.rb ---
require "shale"

require_relative "transformation"

module Ogc
  module Gml
    class TransformationProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :transformation, Transformation

      xml do
        root "transformationRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "Transformation", to: :transformation
      end
    end
  end
end
