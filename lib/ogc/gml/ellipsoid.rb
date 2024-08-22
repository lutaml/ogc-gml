# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "measure"
require_relative "meta_data_property"
require_relative "reference"
require_relative "second_defining_parameter1"
require_relative "abstract_topology"

module Ogc
  module Gml
    class Ellipsoid < AbstractTopology
      attribute :remarks, :string
      attribute :semi_major_axis, Measure
      attribute :second_defining_parameter, SecondDefiningParameter1

      xml do
        root "Ellipsoid"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "semiMajorAxis", to: :semi_major_axis
        map_element "secondDefiningParameter", to: :second_defining_parameter
      end
    end
  end
end
