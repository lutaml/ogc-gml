# frozen_string_literal: true

# --- moving_object_status_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "direct_position"
require_relative "direction_property"
require_relative "geometry_property"
require_relative "location_property"
require_relative "measure"
require_relative "meta_data_property"
require_relative "reference"
require_relative "string_or_ref"
require_relative "abstract_time_complex"

module Ogc
  module Gml
    class MovingObjectStatus < AbstractTimeComplex
      attribute :position, GeometryProperty
      attribute :pos, DirectPosition
      attribute :location_name, Code
      attribute :location_reference, Reference
      attribute :location, LocationProperty
      attribute :speed, Measure
      attribute :bearing, DirectionProperty
      attribute :acceleration, Measure
      attribute :elevation, Measure
      attribute :status, StringOrRef
      attribute :status_reference, Reference

      xml do
        root "MovingObjectStatus"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "validTime", to: :valid_time
        map_element "dataSource", to: :data_source
        map_element "position", to: :position
        map_element "pos", to: :pos
        map_element "locationName", to: :location_name
        map_element "locationReference", to: :location_reference
        map_element "location", to: :location
        map_element "speed", to: :speed
        map_element "bearing", to: :bearing
        map_element "acceleration", to: :acceleration
        map_element "elevation", to: :elevation
        map_element "status", to: :status
        map_element "statusReference", to: :status_reference
      end
    end
  end
end
