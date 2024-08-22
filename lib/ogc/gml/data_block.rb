# frozen_string_literal: true

require "lutaml/model"

require_relative "association_role"
require_relative "coordinates"

module Ogc
  module Gml
    class DataBlock < Lutaml::Model::Serializable
      attribute :range_parameters, AssociationRole
      attribute :tuple_list, Coordinates
      attribute :double_or_nil_reason_tuple_list, :string

      xml do
        root "DataBlock"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "rangeParameters", to: :range_parameters
        map_element "tupleList", to: :tuple_list
        map_element "doubleOrNilReasonTupleList", to: :double_or_nil_reason_tuple_list
      end
    end
  end
end
