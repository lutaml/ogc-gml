# frozen_string_literal: true

require "lutaml/model"
# require_relative "related_time"

module Ogc
  module Gml
    class RelatedTime < Lutaml::Model::Serializable
    end

    class AbstractTimePrimitive < AbstractTopology
      attribute :related_time, RelatedTime, collection: true

      xml do
        root "AbstractTimePrimitive"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "relatedTime", to: :related_time
      end
    end
  end
end
