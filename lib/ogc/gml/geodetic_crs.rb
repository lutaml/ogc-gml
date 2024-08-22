# frozen_string_literal: true

require "shale"

require_relative "cartesian_cs_property"
require_relative "ellipsoidal_cs_property"
require_relative "geodetic_datum_property"
require_relative "spherical_cs_property"
require_relative "abstract_crs"

module Ogc
  module Gml
    class GeodeticCRS < AbstractCRS
      attribute :ellipsoidal_cs, EllipsoidalCSProperty
      attribute :cartesian_cs, CartesianCSProperty
      attribute :spherical_cs, SphericalCSProperty
      attribute :geodetic_datum, GeodeticDatumProperty

      xml do
        root "GeodeticCRS"
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
        map_element "ellipsoidalCS", to: :ellipsoidal_cs
        map_element "cartesianCS", to: :cartesian_cs
        map_element "sphericalCS", to: :spherical_cs
        map_element "geodeticDatum", to: :geodetic_datum
      end
    end
  end
end
