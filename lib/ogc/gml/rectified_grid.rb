# frozen_string_literal: true

# --- rectified_grid_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "grid_limits"
require_relative "meta_data_property"
require_relative "point_property"
require_relative "reference"
require_relative "vector"

module Ogc
  module Gml
    class RectifiedGrid < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :srs_name, Shale::Type::Value
      attribute :srs_dimension, Shale::Type::Integer
      attribute :axis_labels, Shale::Type::Value
      attribute :uom_labels, Shale::Type::Value
      attribute :dimension, Shale::Type::Integer
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :limits, GridLimits
      attribute :axis_name, Shale::Type::String, collection: true
      attribute :origin, PointProperty
      attribute :offset_vector, Vector, collection: true

      xml do
        root "RectifiedGrid"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
        map_attribute "dimension", to: :dimension
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "limits", to: :limits
        map_element "axisName", to: :axis_name
        map_element "origin", to: :origin
        map_element "offsetVector", to: :offset_vector
      end
    end
  end
end
