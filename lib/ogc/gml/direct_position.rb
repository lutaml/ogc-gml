# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class DirectPosition < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :srs_name, :string
      attribute :srs_dimension, :integer
      attribute :axis_labels, :string
      attribute :uom_labels, :string

      xml do
        root "pos"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "srsName", to: :srs_name
        map_attribute "srsDimension", to: :srs_dimension
        map_attribute "axisLabels", to: :axis_labels
        map_attribute "uomLabels", to: :uom_labels
      end
    end
  end
end
