# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_general_transformation"

module Ogc
  module Gml
    class GeneralTransformationProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_general_transformation, AbstractGeneralTransformation

      xml do
        element "generalTransformationRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractGeneralTransformation",
                    to: :abstract_general_transformation
      end
    end
  end
end
