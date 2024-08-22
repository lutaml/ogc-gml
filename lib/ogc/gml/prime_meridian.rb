# frozen_string_literal: true

require "lutaml/model"

require_relative "angle"
require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "abstract_topology"

module Ogc
  module Gml
    class PrimeMeridian < AbstractTopology
      attribute :remarks, :string
      attribute :greenwich_longitude, Angle

      xml do
        root "PrimeMeridian"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "greenwichLongitude", to: :greenwich_longitude
      end
    end
  end
end
