# frozen_string_literal: true

# --- abstract_coverage_type.rb ---
require "shale"
require_relative "bounding_shape"
require_relative "domain_set"
require_relative "location_property"
require_relative "range_set"
require_relative "abstract_topology"

module Ogc
  module Gml
    class AbstractCoverage < AbstractTopology
      attribute :bounded_by, BoundingShape
      attribute :location, LocationProperty
      attribute :domain_set, DomainSet
      attribute :range_set, RangeSet

      xml do
        root "AbstractCoverage"
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
      end
    end
  end
end
