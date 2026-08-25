# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractGML < AbstractTopology
      xml do
        element "AbstractGML"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
      end
    end
  end
end
