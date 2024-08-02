# frozen_string_literal: true

require "shale"
require_relative "code_with_authority"
require_relative "coordinate_system_property"
require_relative "single_crs_property"
require_relative "abstract_general_derived_crs"

module Ogc
  module Gml
    # Represents a derived coordinate reference system.
    class DerivedCRS < AbstractGeneralDerivedCRS
      attribute :base_crs, SingleCRSProperty
      attribute :derived_crs_type, CodeWithAuthority
      attribute :coordinate_system, CoordinateSystemProperty

      xml do
        root "DerivedCRS"
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
        map_element "baseCRS", to: :base_crs
        map_element "derivedCRSType", to: :derived_crs_type
        map_element "coordinateSystem", to: :coordinate_system
      end
    end
  end
end
