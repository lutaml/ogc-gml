# frozen_string_literal: true

require "lutaml/model"
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
        element "AbstractContinuousCoverage"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
