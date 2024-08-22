# frozen_string_literal: true

require "lutaml/model"
require_relative "cartesian_cs_property"
require_relative "geodetic_crs_property"
require_relative "geographic_crs_property"
require_relative "abstract_general_derived_crs"

module Ogc
  module Gml
    class ProjectedCRS < AbstractGeneralDerivedCRS
      attribute :base_geodetic_crs, GeodeticCRSProperty
      attribute :base_geographic_crs, GeographicCRSProperty
      attribute :cartesian_cs, CartesianCSProperty

      xml do
        root "ProjectedCRS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "scope", to: :scope
        map_element "conversion", to: :conversion
        map_element "baseGeodeticCRS", to: :base_geodetic_crs
        map_element "baseGeographicCRS", to: :base_geographic_crs
        map_element "cartesianCS", to: :cartesian_cs
      end
    end
  end
end
