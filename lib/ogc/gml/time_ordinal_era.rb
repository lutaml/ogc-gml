# frozen_string_literal: true

require "lutaml/model"
require_relative "reference"
require_relative "related_time"
require_relative "time_node_property"
# require_relative "time_ordinal_era_property"
require_relative "time_period_property"
require_relative "abstract_topology"

module Ogc
  module Gml
    class TimeOrdinalEraProperty < Lutaml::Model::Serializable
    end

    class TimeOrdinalEra < AbstractTopology
      attribute :remarks, :string
      attribute :related_time, RelatedTime, collection: true
      attribute :start, TimeNodeProperty
      attribute :end, TimeNodeProperty
      attribute :extent, TimePeriodProperty
      attribute :member, TimeOrdinalEraProperty, collection: true
      attribute :group, Reference

      xml do
        root "TimeOrdinalEra"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "relatedTime", to: :related_time
        map_element "start", to: :start
        map_element "end", to: :end
        map_element "extent", to: :extent
        map_element "member", to: :member
        map_element "group", to: :group
      end
    end
  end
end
