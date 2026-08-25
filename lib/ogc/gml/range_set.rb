# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class RangeSet < Lutaml::Model::Serializable
      attribute :value_array, ValueArray, collection: true
      attribute :abstract_scalar_value_list, :string, collection: true
      attribute :data_block, DataBlock
      attribute :file, File

      xml do
        element "rangeSet"
        namespace Namespace

        map_element "ValueArray", to: :value_array
        map_element "AbstractScalarValueList", to: :abstract_scalar_value_list
        map_element "DataBlock", to: :data_block
        map_element "File", to: :file
      end
    end
  end
end
