# frozen_string_literal: true

require "shale"
require_relative "abstract_topology"

module Ogc
  module Gml
    class AbstractGeneralOperationParameter < AbstractTopology
      attribute :remarks, Shale::Type::String
      attribute :minimum_occurs, Shale::Type::Integer

      xml do
        root "AbstractGeneralOperationParameter"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "minimumOccurs", to: :minimum_occurs
      end
    end
  end
end
