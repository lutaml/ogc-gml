# frozen_string_literal: true

require "lutaml/model"

require_relative "bounding_shape"
require_relative "code"
require_relative "code_with_authority"
require_relative "direction_property"
require_relative "location_property"
require_relative "measure"
require_relative "meta_data_property"
require_relative "procedure_property"
require_relative "reference"
require_relative "result"
require_relative "target_property"
require_relative "time_primitive_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class DirectedObservationAtDistance < AbstractTopology
      attribute :bounded_by, BoundingShape
      attribute :location, LocationProperty
      attribute :valid_time, TimePrimitiveProperty
      attribute :using, ProcedureProperty
      attribute :target, TargetProperty
      attribute :result_of, Result
      attribute :direction, DirectionProperty
      attribute :distance, Measure

      xml do
        root "DirectedObservationAtDistance"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "boundedBy", to: :bounded_by
        map_element "location", to: :location
        map_element "validTime", to: :valid_time
        map_element "using", to: :using
        map_element "target", to: :target
        map_element "resultOf", to: :result_of
        map_element "direction", to: :direction
        map_element "distance", to: :distance
      end
    end
  end
end
