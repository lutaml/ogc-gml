# frozen_string_literal: true

# --- general_transformation_property_type.rb ---
require "shale"

require_relative "abstract_general_transformation"

module Ogc
  module Gml
    class GeneralTransformationProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_general_transformation, AbstractGeneralTransformation

      xml do
        root "generalTransformationRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractGeneralTransformation", to: :abstract_general_transformation
      end
    end
  end
end
