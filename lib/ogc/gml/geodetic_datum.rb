# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class GeodeticDatum < AbstractDatum
      attribute :prime_meridian, PrimeMeridianProperty
      attribute :ellipsoid, EllipsoidProperty

      xml do
        element "GeodeticDatum"
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
        map_element "primeMeridian", to: :prime_meridian
        map_element "ellipsoid", to: :ellipsoid
      end
    end
  end
end
