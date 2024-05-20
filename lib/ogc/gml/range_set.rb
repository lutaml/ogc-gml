# frozen_string_literal: true

# --- range_set_type.rb ---
require "shale"

require_relative "data_block"
require_relative "file"
require_relative "value_array"

module Ogc
  module Gml
    class RangeSet < Shale::Mapper
      attribute :value_array, ValueArray, collection: true
      attribute :abstract_scalar_value_list, Shale::Type::Value, collection: true
      attribute :data_block, DataBlock
      attribute :file, File

      xml do
        root "rangeSet"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "ValueArray", to: :value_array
        map_element "AbstractScalarValueList", to: :abstract_scalar_value_list
        map_element "DataBlock", to: :data_block
        map_element "File", to: :file
      end
    end
  end
end
