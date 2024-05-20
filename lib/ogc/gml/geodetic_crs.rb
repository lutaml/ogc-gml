# frozen_string_literal: true

# --- geodetic_crs_type.rb ---
require "shale"

require_relative "cartesian_cs_property"
require_relative "code"
require_relative "code_with_authority"
require_relative "ellipsoidal_cs_property"
require_relative "geodetic_datum_property"
require_relative "meta_data_property"
require_relative "reference"
require_relative "spherical_cs_property"

module Ogc
  module Gml
    class GeodeticCRS < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :remarks, Shale::Type::String
      attribute :domain_of_validity, Shale::Type::String, collection: true
      attribute :scope, Shale::Type::String, collection: true
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
