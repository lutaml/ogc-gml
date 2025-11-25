# frozen_string_literal: true

require "lutaml/model"
require_relative "single_crs_property"
require_relative "abstract_crs"

module Ogc
  module Gml
    class CompoundCRS < AbstractCRS
      attribute :aggregation_type, :string
      attribute :component_reference_system, SingleCRSProperty, collection: true

      xml do
        root "CompoundCRS"
        namespace Namespace

        map_attribute "id", to: :id
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
