# frozen_string_literal: true

# --- string_or_ref_type.rb ---
require "shale"

module Ogc
  module Gml
    class StringOrRef < Shale::Mapper
      attribute :content, Shale::Type::String
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value

      xml do
        root "status"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
