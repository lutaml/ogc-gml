# frozen_string_literal: true

# --- time_ordinal_reference_system_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "time_ordinal_era_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class TimeOrdinalReferenceSystem < AbstractTopology
      attribute :remarks, Shale::Type::String
      attribute :domain_of_validity, Shale::Type::String
      attribute :component, TimeOrdinalEraProperty, collection: true

      xml do
        root "TimeOrdinalReferenceSystem"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "component", to: :component
      end
    end
  end
end
