# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class EngineeringDatum < AbstractDatum
      xml do
        element "EngineeringDatum"
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
        map_element "anchorDefinition", to: :anchor_definition
        map_element "realizationEpoch", to: :realization_epoch
      end
    end
  end
end
