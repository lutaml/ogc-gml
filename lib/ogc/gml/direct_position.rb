# frozen_string_literal: true

# --- direct_position_type.rb ---
require "shale"

module Ogc
  module Gml
    class DirectPosition < Shale::Mapper
      attribute :content, Shale::Type::Value
      attribute :srs_name, Shale::Type::Value
      attribute :srs_dimension, Shale::Type::Integer
      attribute :axis_labels, Shale::Type::Value
      attribute :uom_labels, Shale::Type::Value

      xml do
        root "pos"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
      end
    end
  end
end
