# frozen_string_literal: true

# --- abstract_time_primitive_type.rb ---
require "shale"

require_relative "code"
require_relative "code_with_authority"
require_relative "meta_data_property"
require_relative "reference"
# require_relative "related_time"

module Ogc
  module Gml
    class RelatedTime < Shale::Mapper
    end

    class AbstractTimePrimitive < Shale::Mapper
      attribute :id, Shale::Type::Value
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, Shale::Type::String
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
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
