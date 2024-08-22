# frozen_string_literal: true

require "lutaml/model"

require_relative "code"
require_relative "code_with_authority"
# require_relative "curve_property"
require_relative "meta_data_property"
require_relative "reference"

module Ogc
  module Gml
    class CurveProperty < Lutaml::Model::Serializable
    end

    class OrientableCurve < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :srs_name, :string
      attribute :srs_dimension, :integer
      attribute :axis_labels, :string
      attribute :uom_labels, :string
      attribute :orientation, :string, default: -> { "+" }
      attribute :meta_data_property, MetaDataProperty, collection: true
      attribute :description, :string
      attribute :description_reference, Reference
      attribute :identifier, CodeWithAuthority
      attribute :name, Code, collection: true
      attribute :base_curve, CurveProperty

      xml do
        root "OrientableCurve"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "id", to: :id, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
        map_attribute "orientation", to: :orientation
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "baseCurve", to: :base_curve
      end
    end
  end
end
