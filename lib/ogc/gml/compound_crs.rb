# frozen_string_literal: true

require "shale"
require_relative "single_crs_property"
require_relative "abstract_crs"

module Ogc
  module Gml
    class CompoundCRS < AbstractCRS
      attribute :aggregation_type, Shale::Type::String
      attribute :component_reference_system, SingleCRSProperty, collection: true

      xml do
        root "CompoundCRS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "scope", to: :scope
        map_element "componentReferenceSystem", to: :component_reference_system
      end
    end
  end
end
