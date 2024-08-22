# frozen_string_literal: true

require "lutaml/model"
require_relative "general_conversion_property"
require_relative "abstract_crs"

module Ogc
  module Gml
    class AbstractGeneralDerivedCRS < AbstractCRS
      attribute :conversion, GeneralConversionProperty

      xml do
        root "AbstractGeneralDerivedCRS"
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
      end
    end
  end
end
