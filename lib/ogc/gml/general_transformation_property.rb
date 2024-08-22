# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_general_transformation"

module Ogc
  module Gml
    class GeneralTransformationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :abstract_general_transformation, AbstractGeneralTransformation

      xml do
        root "generalTransformationRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractGeneralTransformation", to: :abstract_general_transformation
      end
    end
  end
end
