# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class DataBlock < Lutaml::Model::Serializable
      attribute :range_parameters, AssociationRole
      attribute :tuple_list, Coordinates
      attribute :double_or_nil_reason_tuple_list, :string

      xml do
        element "DataBlock"
        namespace Namespace

        map_element "rangeParameters", to: :range_parameters
        map_element "tupleList", to: :tuple_list
        map_element "doubleOrNilReasonTupleList",
                    to: :double_or_nil_reason_tuple_list
      end
    end
  end
end
