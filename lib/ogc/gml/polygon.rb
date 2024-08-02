# frozen_string_literal: true

# --- polygon_type.rb ---
require "shale"
require_relative "reference"
require_relative "shell_property"
require_relative "abstract_geometry"

module Ogc
  module Gml
    class Polygon < AbstractGeometry
      attribute :exterior, ShellProperty
      attribute :interior, ShellProperty, collection: true
      attribute :schema_location, Shale::Type::String

      xml do
        root "Polygon"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "schemaLocation", to: :schema_location, prefix: "xsi", namespace: "http://www.w3.org/2001/XMLSchema-instance"
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
