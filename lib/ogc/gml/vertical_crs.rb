# frozen_string_literal: true

require "shale"
require_relative "vertical_cs_property"
require_relative "vertical_datum_property"
require_relative "abstract_crs"

module Ogc
  module Gml
    class VerticalCRS < AbstractCRS
      attribute :vertical_cs, VerticalCSProperty
      attribute :vertical_datum, VerticalDatumProperty

      xml do
        root "VerticalCRS"
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
        map_element "verticalCS", to: :vertical_cs
        map_element "verticalDatum", to: :vertical_datum
      end
    end
  end
end
