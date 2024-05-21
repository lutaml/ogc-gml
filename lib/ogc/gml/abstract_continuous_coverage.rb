# frozen_string_literal: true

# --- abstract_continuous_coverage_type.rb ---
require "shale"
require_relative "coverage_function"
require_relative "abstract_coverage"

module Ogc
  module Gml
    class AbstractContinuousCoverage < AbstractCoverage
      attribute :bounded_by, BoundingShape
      attribute :location, LocationProperty
      attribute :domain_set, DomainSet
      attribute :range_set, RangeSet
      attribute :coverage_function, CoverageFunction

      xml do
        root "AbstractContinuousCoverage"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "boundedBy", to: :bounded_by
        map_element "location", to: :location
        map_element "domainSet", to: :domain_set
        map_element "rangeSet", to: :range_set
        map_element "coverageFunction", to: :coverage_function
      end
    end
  end
end
