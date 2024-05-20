# frozen_string_literal: true

# --- procedure_property_type.rb ---
require "shale"

require_relative "abstract_feature"

module Ogc
  module Gml
    class ProcedureProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :abstract_feature, AbstractFeature

      xml do
        root "using"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractFeature", to: :abstract_feature
      end
    end
  end
end
