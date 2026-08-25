# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GeocentricCRS < AbstractCRS
      attribute :uses_cartesian_cs, CartesianCSProperty
      attribute :uses_spherical_cs, SphericalCSProperty
      attribute :uses_geodetic_datum, GeodeticDatumProperty

      xml do
        element "GeocentricCRS"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
