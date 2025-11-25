# frozen_string_literal: true

require "lutaml/model"
require_relative "abstract_coordinate_system"

module Ogc
  module Gml
    class ObliqueCartesianCS < AbstractCoordinateSystem
      xml do
        root "ObliqueCartesianCS"
        namespace Namespace

        map_attribute "id", to: :id
        map_attribute "aggregationType", to: :aggregation_type
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "axis", to: :axis
      end
    end
  end
end
