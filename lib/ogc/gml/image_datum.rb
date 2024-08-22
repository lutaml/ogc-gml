# frozen_string_literal: true

require "lutaml/model"
require_relative "abstract_datum"

module Ogc
  module Gml
    class ImageDatum < AbstractDatum
      attribute :pixel_in_cell, CodeWithAuthority

      xml do
        root "ImageDatum"
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
        map_element "anchorDefinition", to: :anchor_definition
        map_element "realizationEpoch", to: :realization_epoch
        map_element "pixelInCell", to: :pixel_in_cell
      end
    end
  end
end
