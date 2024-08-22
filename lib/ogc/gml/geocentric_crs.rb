# frozen_string_literal: true

require "lutaml/model"
require_relative "cartesian_cs_property"
require_relative "geodetic_datum_property"
require_relative "spherical_cs_property"
require_relative "abstract_crs"

module Ogc
  module Gml
    class GeocentricCRS < AbstractCRS
      attribute :uses_cartesian_cs, CartesianCSProperty
      attribute :uses_spherical_cs, SphericalCSProperty
      attribute :uses_geodetic_datum, GeodeticDatumProperty

      xml do
        root "GeocentricCRS"
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
        map_element "usesCartesianCS", to: :uses_cartesian_cs
        map_element "usesSphericalCS", to: :uses_spherical_cs
        map_element "usesGeodeticDatum", to: :uses_geodetic_datum
      end
    end
  end
end
