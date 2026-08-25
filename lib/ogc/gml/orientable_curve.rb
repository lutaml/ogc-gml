# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class OrientableCurve < Lutaml::Model::Serializable
      attribute :id, Identifier
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
        element "OrientableCurve"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
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
