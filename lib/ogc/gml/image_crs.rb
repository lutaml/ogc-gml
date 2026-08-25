# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class ImageCRS < AbstractCRS
      attribute :cartesian_cs, CartesianCSProperty
      attribute :affine_cs, AffineCSProperty
      attribute :uses_oblique_cartesian_cs, ObliqueCartesianCSProperty
      attribute :image_datum, ImageDatumProperty

      xml do
        element "ImageCRS"
        namespace Namespace

        map_attribute "id", to: :id, form: :qualified
        map_element "metaDataProperty", to: :meta_data_property
        map_element "description", to: :description
        map_element "descriptionReference", to: :description_reference
        map_element "identifier", to: :identifier
        map_element "name", to: :name
        map_element "remarks", to: :remarks
        map_element "domainOfValidity", to: :domain_of_validity
        map_element "scope", to: :scope
        map_element "cartesianCS", to: :cartesian_cs
        map_element "affineCS", to: :affine_cs
        map_element "usesObliqueCartesianCS", to: :uses_oblique_cartesian_cs
        map_element "imageDatum", to: :image_datum
      end
    end
  end
end
