# frozen_string_literal: true

require "shale"
require_relative "abstract_solid"
require_relative "shell_property"

module Ogc
  module Gml
    class Solid < AbstractSolid
      attribute :exterior, ShellProperty
      attribute :interior, ShellProperty, collection: true

      xml do
        root "Solid"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "exterior", to: :exterior
        map_element "interior", to: :interior
      end
    end
  end
end
