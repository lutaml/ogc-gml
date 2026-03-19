# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "time_topology_primitive_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class TimeTopologyComplex < AbstractTopology
      attribute :primitive, TimeTopologyPrimitiveProperty, collection: true

      xml do
        element "TimeTopologyComplex"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "primitive", to: :primitive
      end
    end
  end
end
