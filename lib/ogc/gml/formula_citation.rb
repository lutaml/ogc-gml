# frozen_string_literal: true

# --- formula_citation.rb ---
require "shale"

require_relative "string_or_ref"

module Ogc
  module Gml
    class FormulaCitation < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :reference_event, StringOrRef

      xml do
        root "formulaCitation"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "referenceEvent", to: :reference_event
      end
    end
  end
end
