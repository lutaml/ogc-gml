# frozen_string_literal: true

# --- directed_observation_type.rb ---
require "shale"

require_relative "bounding_shape"
require_relative "code"
require_relative "code_with_authority"
require_relative "direction_property"
require_relative "location_property"
require_relative "meta_data_property"
require_relative "procedure_property"
require_relative "reference"
require_relative "result"
require_relative "target_property"
require_relative "time_primitive_property"

module Ogc
  module Gml
    class DirectedObservation < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :bounded_by, BoundingShape
      attribute :location, LocationProperty
      attribute :valid_time, TimePrimitiveProperty
      attribute :using, ProcedureProperty
      attribute :target, TargetProperty
      attribute :result_of, Result
      attribute :direction, DirectionProperty

      xml do
        root "DirectedObservation"
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
      end
    end
  end
end
