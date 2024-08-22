# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
require_relative "related_time"

module Ogc
  module Gml
    class AbstractTimeGeometricPrimitive < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :frame, :string, default: -> { "#ISO-8601" }
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :related_time, RelatedTime, collection: true

      xml do
        root "AbstractTimeGeometricPrimitive"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "frame", to: :frame
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
