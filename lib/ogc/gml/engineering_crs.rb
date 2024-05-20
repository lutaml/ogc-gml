# frozen_string_literal: true

# --- engineering_crs_type.rb ---
require "shale"

require_relative "affine_cs_property"
require_relative "cartesian_cs_property"
require_relative "code"
require_relative "code_with_authority"
require_relative "coordinate_system_property"
require_relative "cylindrical_cs_property"
require_relative "engineering_datum_property"
require_relative "linear_cs_property"
require_relative "meta_data_property"
require_relative "polar_cs_property"
require_relative "reference"
require_relative "spherical_cs_property"
require_relative "user_defined_cs_property"

module Ogc
  module Gml
    class EngineeringCRS < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :remarks, Shale::Type::String
      attribute :domain_of_validity, Shale::Type::String, collection: true
      attribute :scope, Shale::Type::String, collection: true
      attribute :affine_cs, AffineCSProperty
      attribute :cartesian_cs, CartesianCSProperty
      attribute :cylindrical_cs, CylindricalCSProperty
      attribute :linear_cs, LinearCSProperty
      attribute :polar_cs, PolarCSProperty
      attribute :spherical_cs, SphericalCSProperty
      attribute :user_defined_cs, UserDefinedCSProperty
      attribute :coordinate_system, CoordinateSystemProperty
      attribute :engineering_datum, EngineeringDatumProperty

      xml do
        root "EngineeringCRS"
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
        map_element "affineCS", to: :affine_cs
        map_element "cartesianCS", to: :cartesian_cs
        map_element "cylindricalCS", to: :cylindrical_cs
        map_element "linearCS", to: :linear_cs
        map_element "polarCS", to: :polar_cs
        map_element "sphericalCS", to: :spherical_cs
        map_element "userDefinedCS", to: :user_defined_cs
        map_element "coordinateSystem", to: :coordinate_system
        map_element "engineeringDatum", to: :engineering_datum
      end
    end
  end
end
