# frozen_string_literal: true

require "shale"
require_relative "temporal_cs_property"
require_relative "temporal_datum_property"
require_relative "time_cs_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class TemporalCRS < AbstractCRS
      attribute :time_cs, TimeCSProperty
      attribute :uses_temporal_cs, TemporalCSProperty
      attribute :temporal_datum, TemporalDatumProperty

      xml do
        root "TemporalCRS"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "scope", to: :scope
        map_element "timeCS", to: :time_cs
        map_element "usesTemporalCS", to: :uses_temporal_cs
        map_element "temporalDatum", to: :temporal_datum
      end
    end
  end
end
