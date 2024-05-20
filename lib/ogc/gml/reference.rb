# frozen_string_literal: true

# --- reference_type.rb ---
require "shale"

module Ogc
  module Gml
    class Reference < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value

      xml do
        root "statusReference"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
